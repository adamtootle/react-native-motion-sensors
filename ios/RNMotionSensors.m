
#import "RNMotionSensors.h"
#import <CoreMotion/CoreMotion.h>

@implementation RNMotionSensors {
    CMMotionManager *motionManager;
    BOOL hasListeners;
    CMAttitude *initialAttitude;
}

- (instancetype)init {
    self = [super init];
    
    motionManager = [[CMMotionManager alloc] init];
    
    return self;
}

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

- (void)startObserving {
    hasListeners = YES;
}

- (void)stopObserving {
    hasListeners = NO;
}

- (NSArray<NSString *> *)supportedEvents {
    return @[@"DeviceMotionUpdates"];
}

RCT_EXPORT_METHOD(startDeviceMotionUpdates:(NSTimeInterval)interval)
{
    [motionManager setDeviceMotionUpdateInterval:interval];
    [motionManager startDeviceMotionUpdatesToQueue:[[NSOperationQueue alloc] init]
                                       withHandler:^(CMDeviceMotion * _Nullable motion, NSError * _Nullable error) {
                                           if (hasListeners) {
                                               NSDictionary *eventObject = @{
                                                                             @"attitude":@{
                                                                                        @"roll":[NSNumber numberWithDouble:motion.attitude.roll],
                                                                                        @"pitch":[NSNumber numberWithDouble:motion.attitude.pitch],
                                                                                        @"yaw":[NSNumber numberWithDouble:motion.attitude.yaw]
                                                                                     },
                                                                             @"gravity":@{
                                                                                        @"x":[NSNumber numberWithDouble:motion.gravity.x],
                                                                                        @"y":[NSNumber numberWithDouble:motion.gravity.y],
                                                                                        @"z":[NSNumber numberWithDouble:motion.gravity.z]
                                                                                     }
                                                                             };
                                               [self sendEventWithName:@"DeviceMotionUpdates"
                                                                  body:eventObject];
                                           }
                                       }];
}

RCT_EXPORT_METHOD(stopDeviceMotionUpdates)
{
    [motionManager stopDeviceMotionUpdates];
}

@end
