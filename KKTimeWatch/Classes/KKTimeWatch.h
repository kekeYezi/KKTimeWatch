//
//  KKTimeWatch.h
//  Pods
//
//  Created by Daniel on 2017/9/2.
//
//* Click https://github.com/kekeYezi/KKTimeWatch
//* or https://kekeyezi.github.io to contact us.
//

#import <Foundation/Foundation.h>

#define KKTimeWatch_Start [[KKTimeWatch sharedTimewatch] kk_startWatch]

#define KKTimeWatch_Reset [[KKTimeWatch sharedTimewatch] kk_resetWatch]

#define KKTimeWatchRecord(value) [[KKTimeWatch sharedTimewatch] kk_watchWithDescription:value]

#define KKTimeWatchEnd(value) [[KKTimeWatch sharedTimewatch] kk_watchEndWithDescription:value]

NS_ASSUME_NONNULL_BEGIN

@interface KKTimeWatch : NSObject

+ (instancetype)sharedTimewatch;

- (void)kk_startWatch;

- (void)kk_resetWatch;

- (void)kk_watchWithDescription:(NSString *)description;

- (void)kk_watchEndWithDescription:(NSString *)description;

@end

NS_ASSUME_NONNULL_END
