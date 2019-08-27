#import "DeviceinfoPlugin.h"
#import <deviceinfo/deviceinfo-Swift.h>

@implementation DeviceinfoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDeviceinfoPlugin registerWithRegistrar:registrar];
}
@end
