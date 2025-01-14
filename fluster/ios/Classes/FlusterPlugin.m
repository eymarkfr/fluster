#import "FlusterPlugin.h"
#if __has_include(<fluster/fluster-Swift.h>)
#import <fluster/fluster-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fluster-Swift.h"
#endif

@implementation FlusterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlusterPlugin registerWithRegistrar:registrar];
}
@end
