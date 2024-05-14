#import "MotionSensorsUpdatedPlugin.h"
#if __has_include(<motion_sensors/motion_sensors-Swift.h>)
#import <motion_sensors_updated/motion_sensors-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "motion_sensors-Swift.h"
#endif

@implementation MotionSensorsUpdatedPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMotionSensorsUpdatedPlugin registerWithRegistrar:registrar];
}
@end
