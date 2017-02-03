#import "RNSettingsURL.h"
#import <UIKit/UIKit.h>

@implementation RNSettingsURL

RCT_EXPORT_MODULE()

RCT_REMAP_METHOD(getURL,
                 resolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject) {

  resolve(UIApplicationOpenSettingsURLString);
}

@end
