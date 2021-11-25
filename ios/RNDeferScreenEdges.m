
#import "RNDeferScreenEdges.h"

@implementation DeferScreenEdgesViewController

- (UIRectEdge)preferredScreenEdgesDeferringSystemGestures
{
    return UIRectEdgeAll;
}

@end


@implementation RNDeferScreenEdges

- (id) init {
    [self setPrefersAutoHidden:NO];
    return [super init];
}

- (void) setPrefersAutoHidden: (BOOL) newValue {
    DeferScreenEdgesViewController *rootViewController = [self getIndicatorViewController];

    if (@available(iOS 11.0, *)) {
        [rootViewController setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
    }
}

- (DeferScreenEdgesViewController*) getIndicatorViewController {
    UIViewController *rootViewController = [UIApplication sharedApplication].delegate.window.rootViewController;
    NSAssert(
        [rootViewController isKindOfClass:[DeferScreenEdgesViewController class]],
        @"rootViewController is not of type DeferScreenEdgesViewController as expected."
    );
    return (DeferScreenEdgesViewController*) rootViewController;
}

- (dispatch_queue_t)methodQueue {
    return dispatch_get_main_queue();
}

+ (BOOL)requiresMainQueueSetup {
    return YES;
}

RCT_EXPORT_MODULE()

//RCT_EXPORT_METHOD(alwaysVisible) {
//    [self setPrefersAutoHidden:NO];
//}
//
//RCT_EXPORT_METHOD(autoHidden) {
//    [self setPrefersAutoHidden:YES];
//}

@end


  
