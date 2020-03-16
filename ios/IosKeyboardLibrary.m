//#import "IosKeyboardLibrary.h"
//#import <React/RCTLog.h>
//
//
//@implementation IosKeyboardLibrary
//
//RCT_EXPORT_MODULE()
//
//// This would name the module AwesomeCalendarManager instead
//// RCT_EXPORT_MODULE(AwesomeCalendarManager);
//
////RCT_EXPORT_METHOD(sampleMethod:(NSString *)stringArgument numberParameter:(nonnull NSNumber *)numberArgument callback:(RCTResponseSenderBlock)callback)
////{
////    // TODO: Implement some actually useful functionality
////    callback(@[[NSString stringWithFormat: @"numberArgument: %@ stringArgument: %@", numberArgument, stringArgument]]);
////}
//
//RCT_EXPORT_METHOD(addEvent:(NSString *)name location:(NSString *)location)
//{
//  RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
//}
//
//@end

#import "IosKeyboardLibrary.h"
#import <UIKit/UIKit.h>

@implementation IosKeyboardLibrary

static double const DEFAULT_TOAST_DURATION = 3.5;

-(void) showToast:(NSString*) msg
{
    [self showToast:msg duration:DEFAULT_TOAST_DURATION];
}

-(void) showToast:(NSString*) msg duration:(double) duration
{
    UIWindow *window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    UIViewController* rootVC = [[UIViewController alloc] init];
    if (rootVC == nil || window == nil)
    {
        return;
    }
    
    window.backgroundColor = [UIColor clearColor];
    window.rootViewController = rootVC;
    [window makeKeyAndVisible];
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:nil message:msg preferredStyle:UIAlertControllerStyleActionSheet];
    
    [rootVC presentViewController:alert animated:YES completion:nil];
    
    [self closeToast:window alert:alert duration:duration];
}

- (void) closeToast:(UIWindow*) window alert:(UIAlertController*) alert duration:(double) duration
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(duration * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [alert dismissViewControllerAnimated:YES completion:nil];
        [window removeFromSuperview];
    });
}

@end
