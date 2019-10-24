
#import "RNAppRater.h"
#import <StoreKit/StoreKit.h>

@implementation RNAppRater

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(){
    if (@available(iOS 10.3, *)) {
        [SKStoreReviewController requestReview];
    }
}

@end
  