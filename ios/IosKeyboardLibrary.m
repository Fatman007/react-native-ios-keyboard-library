
#import "RNIosKeyboardLibrary.h"
#import "IosKeyboardLibrary.h"

@interface IosKeyboardLibrary()

@property (nonatomic, retain) RNIosKeyboardLibrary *toast;

@end

@implementation IosKeyboardLibrary

- (instancetype)init {
    self = [super init];
    if (self) {
        self.toast = [[IosKeyboardLibrary alloc] init];
    }
    return self;
}

+ (BOOL)requiresMainQueueSetup
{
    return YES;
}

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(show:(NSString *)text)
{
    [self.toast showToast:text];
}

@end
