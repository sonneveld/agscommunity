//=============================================================================
//
// Adventure Game Studio (AGS)
//
// Copyright (C) 1999-2011 Chris Jones and 2011-20xx others
// The full list of copyright holders can be found in the Copyright.txt
// file, which is part of this source code distribution.
//
// The AGS source code is provided under the Artistic License 2.0.
// A copy of this license can be found in the file License.txt and at
// http://www.opensource.org/licenses/artistic-license-2.0.php
//
//=============================================================================
//
// MOUSELIBW32.CPP
//
// Library of mouse functions for graphics and text mode
//
// (c) 1994 Chris Jones
// Win32 (allegro) update (c) 1999 Chris Jones
//
//=============================================================================

#if defined (WINDOWS_VERSION)
#include <dos.h>
#include <conio.h>
#include <process.h>
#endif

#include "util/wgt2allg.h"

#ifndef TRUE
#define TRUE 1
#define FALSE 0
#endif

#include "ac/gamestate.h"
#include "debug/out.h"
#include "device/mousew32.h"
#include "gfx/bitmap.h"
#include "gfx/gfx_util.h"
#include "main/graphics_mode.h"
#include "platform/base/agsplatformdriver.h"
#include "util/math.h"

#include "util/mutex.h"
#include "util/mutex_lock.h"
#include "ac/timer.h"

using namespace AGS::Common;
using namespace AGS::Engine;

extern void process_pending_events();

extern char lib_file_name[13];

const char *mouselibcopyr = "MouseLib32 (c) 1994, 1998 Chris Jones";
const int NONE = -1, LEFT = 0, RIGHT = 1, MIDDLE = 2;
char currentcursor = 0;
// virtual mouse cursor coordinates
int mousex = 0, mousey = 0, numcurso = -1, hotx = 0, hoty = 0;
// real mouse coordinates and bounds
int real_mouse_x = 0, real_mouse_y = 0;
int boundx1 = 0, boundx2 = 99999, boundy1 = 0, boundy2 = 99999;
int disable_mgetgraphpos = 0;
char ignore_bounds = 1;
extern char alpha_blend_cursor ;
Bitmap *mousecurs[MAXCURSORS];
extern color palette[256];
extern volatile bool switched_away;

namespace Mouse
{
    // Tells whether mouse was locked to the game window
    bool LockedToWindow = false;

    // Screen rectangle, in which the mouse movement is controlled by engine
    Rect  ControlRect;
    // Mouse control enabled flag
    bool  ControlEnabled = false;
    // Flag that tells whether the mouse must be forced to stay inside control rect
    bool  ConfineInCtrlRect = false;
    // Mouse speed value provided by user
    float SpeedVal = 1.f;
    // Mouse speed unit
    float SpeedUnit = 1.f;
    // Actual speed factor (cached)
    float Speed = 1.f;
    
    void AdjustPosition(int &x, int &y);
}

/*
 Button tracking:
 
 hook into the mouse callback to track buttons.
 On OSX, some tap to click up/down events happen too quickly to be detected on the polled mouse_b global variable.
 Instead we accumulate button presses over a couple of timer loops. 
 
 Requires only polling if necessary because otherwise will only call the callback when poll is called.
 */

static AGS::Engine::Mutex _mouse_mutex;
static int _button_state = 0;
static int _accumulated_button_state = 0;
static long _clear_at_global_timer_counter = 0;

#if defined(WINDOWS_VERSION)
void __cdecl _ags_mouse_callback(int flags)
#else
extern "C" void _ags_mouse_callback(int flags)
#endif
{
    AGS::Engine::MutexLock _lock(_mouse_mutex);
    
    if (flags&MOUSE_FLAG_LEFT_DOWN) {
        _button_state |= 1;
        _accumulated_button_state |= 1;
    }
    if (flags&MOUSE_FLAG_RIGHT_DOWN) {
        _button_state |= 2;
        _accumulated_button_state |= 2;
    }
    if (flags&MOUSE_FLAG_MIDDLE_DOWN) {
        _button_state |= 4;
        _accumulated_button_state |= 4;
    }
    
    if (flags&MOUSE_FLAG_LEFT_UP) {
        _button_state &= ~1;
    }
    if (flags&MOUSE_FLAG_RIGHT_UP) {
        _button_state &= ~2;
    }
    if (flags&MOUSE_FLAG_MIDDLE_UP) {
        _button_state &= ~4;
    }
}

int get_mouse_b()
{
#pragma message ("SDL-TODO: find out where mouse_b is needed, are events polled before that?")
    process_pending_events();
    
    AGS::Engine::MutexLock _lock(_mouse_mutex);
    
    int result = _button_state | _accumulated_button_state;
    
    if (getGlobalTimerCounterMs() >= _clear_at_global_timer_counter) {
        _accumulated_button_state = 0;
        _clear_at_global_timer_counter = getGlobalTimerCounterMs() + 50;
    }
    return result;
}

void mgraphconfine(int x1, int y1, int x2, int y2)
{
  Mouse::ControlRect = Rect(x1, y1, x2, y2);
  set_mouse_range(Mouse::ControlRect.Left, Mouse::ControlRect.Top, Mouse::ControlRect.Right, Mouse::ControlRect.Bottom);
  Debug::Printf("Mouse confined: (%d,%d)-(%d,%d) (%dx%d)",
      Mouse::ControlRect.Left, Mouse::ControlRect.Top, Mouse::ControlRect.Right, Mouse::ControlRect.Bottom,
      Mouse::ControlRect.GetWidth(), Mouse::ControlRect.GetHeight());
}

void mgetgraphpos()
{
#pragma message ("SDL-TODO: find out where mgetgraphpos is needed, are events polled before that?")
    process_pending_events();
    
    if (disable_mgetgraphpos)
    {
        // The cursor coordinates are provided from alternate source;
        // in this case we completely ignore actual cursor movement.
        if (!ignore_bounds &&
            (mousex < boundx1 || mousey < boundy1 || mousex > boundx2 || mousey > boundy2))
        {
            mousex = Math::Clamp(mousex, boundx1, boundx2);
            mousey = Math::Clamp(mousey, boundy1, boundy2);
            msetgraphpos(mousex, mousey);
        }
        return;
    }

    if (!switched_away && Mouse::ControlEnabled)
    {
        // Control mouse movement by querying mouse mickeys (movement deltas)
        // and applying them to saved mouse coordinates.
        int mickey_x, mickey_y;
        get_mouse_mickeys(&mickey_x, &mickey_y);
        
        // Apply mouse speed
        int dx = Mouse::Speed * mickey_x;
        int dy = Mouse::Speed * mickey_y;

        //
        // Perform actual cursor update
        //---------------------------------------------------------------------
        // If the real cursor is inside the control rectangle (read - game window),
        // then apply sensitivity factors and adjust real cursor position
        if (Mouse::ControlRect.IsInside(real_mouse_x + dx, real_mouse_y + dy))
        {
            real_mouse_x += dx;
            real_mouse_y += dy;
            position_mouse(real_mouse_x, real_mouse_y);
        }
        // Otherwise, if real cursor was moved outside the control rect, yet we
        // are required to confine cursor inside one, then adjust cursor position
        // to stay inside the rect's bounds.
        else if (Mouse::ConfineInCtrlRect)
        {
            real_mouse_x = Math::Clamp(real_mouse_x + dx, Mouse::ControlRect.Left, Mouse::ControlRect.Right);
            real_mouse_y = Math::Clamp(real_mouse_y + dy, Mouse::ControlRect.Top, Mouse::ControlRect.Bottom);
            position_mouse(real_mouse_x, real_mouse_y);
        }
        // Lastly, if the real cursor is out of the control rect, simply add
        // actual movement to keep up with the system cursor coordinates.
        else
        {
            real_mouse_x += mickey_x;
            real_mouse_y += mickey_y;
        }

        // Do not update the game cursor if the real cursor is beyond the control rect
        if (!Mouse::ControlRect.IsInside(real_mouse_x, real_mouse_y))
            return;
    }
    else
    {
        // Save real cursor coordinates provided by system
        real_mouse_x = mouse_x;
        real_mouse_y = mouse_y;
    }

    // Set new in-game cursor position
    mousex = real_mouse_x;
    mousey = real_mouse_y;

    if (!ignore_bounds &&
        (mousex < boundx1 || mousey < boundy1 || mousex > boundx2 || mousey > boundy2))
    {
        mousex = Math::Clamp(mousex, boundx1, boundx2);
        mousey = Math::Clamp(mousey, boundy1, boundy2);
        msetgraphpos(mousex, mousey);
    }

    // Convert to virtual coordinates
    Mouse::AdjustPosition(mousex, mousey);
}

void msetcursorlimit(int x1, int y1, int x2, int y2)
{
  boundx1 = x1;
  boundy1 = y1;
  boundx2 = x2;
  boundy2 = y2;
}

int hotxwas = 0, hotywas = 0;
void domouse(int str)
{
  /*
     TO USE THIS ROUTINE YOU MUST LOAD A MOUSE CURSOR USING mloadcursor.
     YOU MUST ALSO REMEMBER TO CALL mfreemem AT THE END OF THE PROGRAM.
  */
  int poow = mousecurs[currentcursor]->GetWidth();
  int pooh = mousecurs[currentcursor]->GetHeight();
  int smx = mousex - hotxwas, smy = mousey - hotywas;
  const Rect &viewport = play.GetMainViewport();

  mgetgraphpos();

  // temporarily adjust mousex/y. Original values returned at end of func.
  mousex -= hotx;
  mousey -= hoty;

  if (mousex + poow >= viewport.GetWidth())
    poow = viewport.GetWidth() - mousex;

  if (mousey + pooh >= viewport.GetHeight())
    pooh = viewport.GetHeight() - mousey;

  mousex += hotx;
  mousey += hoty;
  hotxwas = hotx;
  hotywas = hoty;
}

int ismouseinbox(int lf, int tp, int rt, int bt)
{
  if ((mousex >= lf) & (mousex <= rt) & (mousey >= tp) & (mousey <= bt))
    return TRUE;
  else
    return FALSE;
}

void mfreemem()
{
  for (int re = 0; re < numcurso; re++) {
    delete mousecurs[re];
  }
}

void mnewcursor(char cursno)
{
  domouse(2);
  currentcursor = cursno;
  domouse(1);
}


void mloadwcursor(char *namm)
{
  color dummypal[256];
  if (wloadsprites(&dummypal[0], namm, mousecurs, 0, MAXCURSORS)) {
    //printf("C_Load_wCursor: Error reading mouse cursor file\n"); 
    exit(1);
  }
}

int butwas = 0;
int mgetbutton()
{
  int toret = NONE;
  int butis = get_mouse_b();

  if ((butis > 0) & (butwas > 0))
    return NONE;  // don't allow holding button down

  if (butis & 1)
  {
    toret = LEFT;
#if defined(MAC_VERSION)
    SDL_PumpEvents();
    SDL_Keymod modState = SDL_GetModState();
    // j Ctrl-left click should be right-click
    if (modState & KMOD_CTRL) {
      toret = RIGHT;
    }
#endif
  }
  else if (butis & 2)
    toret = RIGHT;
  else if (butis & 4)
    toret = MIDDLE;

  butwas = butis;
  return toret;
}

const int MB_ARRAY[3] = { 1, 2, 4 };
int misbuttondown(int buno)
{
  return get_mouse_b() & MB_ARRAY[buno];
}

void msetgraphpos(int xa, int ya)
{
  real_mouse_x = xa;
  real_mouse_y = ya;
  position_mouse(real_mouse_x, real_mouse_y);
}

void msethotspot(int xx, int yy)
{
  hotx = xx;  // mousex -= hotx; mousey -= hoty;
  hoty = yy;  // mousex += hotx; mousey += hoty;
}

int minstalled()
{
  mouse_callback = &_ags_mouse_callback;
    
  int nbuts = install_mouse();
  mgraphconfine(0, 0, 319, 199);  // use 320x200 co-ord system
  return nbuts;
}

void Mouse::AdjustPosition(int &x, int &y)
{
    x = GameScaling.X.UnScalePt(x) - play.GetMainViewport().Left;
    y = GameScaling.Y.UnScalePt(y) - play.GetMainViewport().Top;
}

void Mouse::SetGraphicArea()
{
    Rect dst_r = GameScaling.ScaleRange(play.GetMainViewport());
    mgraphconfine(dst_r.Left, dst_r.Top, dst_r.Right, dst_r.Bottom);
}

void Mouse::SetMoveLimit(const Rect &r)
{
    Rect src_r = OffsetRect(r, play.GetMainViewport().GetLT());
    Rect dst_r = GameScaling.ScaleRange(src_r);
    msetcursorlimit(dst_r.Left, dst_r.Top, dst_r.Right, dst_r.Bottom);
}

void Mouse::SetPosition(const Point p)
{
    msetgraphpos(GameScaling.X.ScalePt(p.X + play.GetMainViewport().Left), GameScaling.Y.ScalePt(p.Y + play.GetMainViewport().Top));
}

bool Mouse::IsLockedToWindow()
{
    return LockedToWindow;
}

bool Mouse::TryLockToWindow()
{
    if (!LockedToWindow)
        LockedToWindow = platform->LockMouseToWindow();
    return LockedToWindow;
}

void Mouse::UnlockFromWindow()
{
    platform->UnlockMouse();
    LockedToWindow = false;
}

void Mouse::EnableControl(bool confine)
{
    ControlEnabled = true;
    ConfineInCtrlRect = confine;
}

void Mouse::DisableControl()
{
    ControlEnabled = false;
    ConfineInCtrlRect = false;
    SpeedVal = 1.f;
    SpeedUnit = 1.f;
    Speed = 1.f;
}

bool Mouse::IsControlEnabled()
{
    return ControlEnabled;
}

void Mouse::SetSpeedUnit(float f)
{
    if (!ControlEnabled)
        return;
    SpeedUnit = f;
    Speed = SpeedVal / SpeedUnit;
}

float Mouse::GetSpeedUnit()
{
    return SpeedUnit;
}

void Mouse::SetSpeed(float speed)
{
    if (!ControlEnabled)
        return;
    SpeedVal = Math::Max(0.f, speed);
    Speed = SpeedUnit * SpeedVal;
}

float Mouse::GetSpeed()
{
    return SpeedVal;
}
