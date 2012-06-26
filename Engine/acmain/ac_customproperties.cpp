
#include <stdio.h>
#include "wgt2allg.h"
#include "acmain/ac_maindefines.h"
#include "acmain/ac_customproperties.h"
#include "acmain/ac_commonheaders.h"

// begin custom property functions

// Get an integer property
int get_int_property (CustomProperties *cprop, const char *property) {
  int idx = game.propSchema.findProperty(property);

  if (idx < 0)
    quit("!GetProperty: no such property found in schema. Make sure you are using the property's name, and not its description, when calling this command.");

  if (game.propSchema.propType[idx] == PROP_TYPE_STRING)
    quit("!GetProperty: need to use GetPropertyString for a text property");

  const char *valtemp = cprop->getPropertyValue(property);
  if (valtemp == NULL) {
    valtemp = game.propSchema.defaultValue[idx];
  }
  return atoi(valtemp);
}

// Get a string property
void get_text_property (CustomProperties *cprop, const char *property, char *bufer) {
  int idx = game.propSchema.findProperty(property);

  if (idx < 0)
    quit("!GetPropertyText: no such property found in schema. Make sure you are using the property's name, and not its description, when calling this command.");

  if (game.propSchema.propType[idx] != PROP_TYPE_STRING)
    quit("!GetPropertyText: need to use GetProperty for a non-text property");

  const char *valtemp = cprop->getPropertyValue(property);
  if (valtemp == NULL) {
    valtemp = game.propSchema.defaultValue[idx];
  }
  strcpy (bufer, valtemp);
}

const char* get_text_property_dynamic_string(CustomProperties *cprop, const char *property) {
  int idx = game.propSchema.findProperty(property);

  if (idx < 0)
    quit("!GetTextProperty: no such property found in schema. Make sure you are using the property's name, and not its description, when calling this command.");

  if (game.propSchema.propType[idx] != PROP_TYPE_STRING)
    quit("!GetTextProperty: need to use GetProperty for a non-text property");

  const char *valtemp = cprop->getPropertyValue(property);
  if (valtemp == NULL) {
    valtemp = game.propSchema.defaultValue[idx];
  }

  return CreateNewScriptString(valtemp);
}

int GetInvProperty (int item, const char *property) {
  return get_int_property (&game.invProps[item], property);
}
int InventoryItem_GetProperty(ScriptInvItem *scii, const char *property) {
  return get_int_property (&game.invProps[scii->id], property);
}




int GetHotspotProperty (int hss, const char *property) {
  return get_int_property (&thisroom.hsProps[hss], property);
}
int Hotspot_GetProperty (ScriptHotspot *hss, const char *property) {
  return get_int_property (&thisroom.hsProps[hss->id], property);
}



int GetRoomProperty (const char *property) {
  return get_int_property (&thisroom.roomProps, property);
}


void GetInvPropertyText (int item, const char *property, char *bufer) {
  get_text_property (&game.invProps[item], property, bufer);
}
void InventoryItem_GetPropertyText(ScriptInvItem *scii, const char *property, char *bufer) {
  get_text_property(&game.invProps[scii->id], property, bufer);
}
const char* InventoryItem_GetTextProperty(ScriptInvItem *scii, const char *property) {
  return get_text_property_dynamic_string(&game.invProps[scii->id], property);
}

void GetHotspotPropertyText (int item, const char *property, char *bufer) {
  get_text_property (&thisroom.hsProps[item], property, bufer);
}
void Hotspot_GetPropertyText (ScriptHotspot *hss, const char *property, char *bufer) {
  get_text_property (&thisroom.hsProps[hss->id], property, bufer);
}
const char* Hotspot_GetTextProperty(ScriptHotspot *hss, const char *property) {
  return get_text_property_dynamic_string(&thisroom.hsProps[hss->id], property);
}

void GetRoomPropertyText (const char *property, char *bufer) {
  get_text_property (&thisroom.roomProps, property, bufer);
}
const char* Room_GetTextProperty(const char *property) {
  return get_text_property_dynamic_string(&thisroom.roomProps, property);
}

// end custom property functions

