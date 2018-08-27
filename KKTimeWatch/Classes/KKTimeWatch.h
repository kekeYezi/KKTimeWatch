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

#define KKTimeWatchStart [[KKTimeWatch sharedTimewatch] startWatch];

#define KKTimeWatchReset [[KKTimeWatch sharedTimewatch] resetWatch];

#define KKTimeWatchRecord(value) [[KKTimeWatch sharedTimewatch] watchWithDescription:value];

#define KKTimeWatchStop(value) [[KKTimeWatch sharedTimewatch] watchEndWithDescription:value;

NS_ASSUME_NONNULL_BEGIN

@interface KKTimeWatch : NSObject

+ (instancetype)sharedTimewatch;

- (void)startWatch;

- (void)resetWatch;

- (void)watchWithDescription:(NSString *)description;

- (void)watchEndWithDescription:(NSString *)description;

@end

NS_ASSUME_NONNULL_END
