#import "IsIphonex.h"


@implementation IsIphonex

if (@available(iOS 11.0, *)) {
    CGFloat a =  [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom;
    NSLog(@"%f",a);
} else {
    // Fallback on earlier versions
}

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(sampleMethod:(NSString *)stringArgument numberParameter:(nonnull NSNumber *)numberArgument callback:(RCTResponseSenderBlock)callback)
{
    // TODO: Implement some actually useful functionality
    callback(@[[NSString stringWithFormat: @"numberArgument: %@ stringArgument: %@", numberArgument, stringArgument]]);
}

RCT_REMAP_METHOD(isIphonex,
                 resolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
    BOOL isPhoneX = NO;
    if (@available(iOS 11.0, *)) {
        isPhoneX = [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom > 0.0;
    }
    resolve(isPhoneX);
}

@end
