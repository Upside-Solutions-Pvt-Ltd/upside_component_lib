#ifndef FLUTTER_PLUGIN_UPSIDE_COMPONENT_LIB_PLUGIN_H_
#define FLUTTER_PLUGIN_UPSIDE_COMPONENT_LIB_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace upside_component_lib {

class UpsideComponentLibPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  UpsideComponentLibPlugin();

  virtual ~UpsideComponentLibPlugin();

  // Disallow copy and assign.
  UpsideComponentLibPlugin(const UpsideComponentLibPlugin&) = delete;
  UpsideComponentLibPlugin& operator=(const UpsideComponentLibPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace upside_component_lib

#endif  // FLUTTER_PLUGIN_UPSIDE_COMPONENT_LIB_PLUGIN_H_
