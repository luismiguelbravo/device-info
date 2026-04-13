#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

CAP_PLUGIN(DeviceInfoPlugin, "DeviceInfo",
  CAP_PLUGIN_METHOD(getInfo, CAPPluginReturnPromise);
  CAP_PLUGIN_METHOD(getLocaleInfo, CAPPluginReturnPromise);
)