#include "include/upside_component_lib/upside_component_lib_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "upside_component_lib_plugin.h"

void UpsideComponentLibPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  upside_component_lib::UpsideComponentLibPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
