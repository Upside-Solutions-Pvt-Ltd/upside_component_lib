//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <upside_component_lib/upside_component_lib_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) upside_component_lib_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "UpsideComponentLibPlugin");
  upside_component_lib_plugin_register_with_registrar(upside_component_lib_registrar);
}
