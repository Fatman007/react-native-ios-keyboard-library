
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNIosKeyboardLibrary : NSObject
-(void) showToast:(NSString*) msg;
-(void) showToast:(NSString*) msg duration:(double) duration;
@end

NS_ASSUME_NONNULL_END
