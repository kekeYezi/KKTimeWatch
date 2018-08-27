//
//  KKTimeWatch.m
//  Pods
//
//  Created by Daniel on 2017/9/2.
//
//
//* Click https://github.com/kekeYezi/KKTimeWatch
//* or https://kekeyezi.github.io to contact us.
//

#import "KKTimeWatch.h"

@interface KKTimeWatch ()

@property (nonatomic, assign) CFTimeInterval startTimeInterval;

@property (nonatomic, assign) CFTimeInterval passTimeInterval;

@property (nonatomic, strong) NSMutableArray *timeRecordArray;

@end

@implementation KKTimeWatch

+ (instancetype)sharedTimewatch {
    static KKTimeWatch* timewatch;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        timewatch = [[KKTimeWatch alloc] init];
    });
    
    return timewatch;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.timeRecordArray = [NSMutableArray array];
        self.passTimeInterval = 0;
    }
    return self;
}

- (void)startWatch {
    self.startTimeInterval = CACurrentMediaTime();
}

- (void)resetWatch {
    self.startTimeInterval = CACurrentMediaTime();
    self.passTimeInterval = 0;
    [self.timeRecordArray removeAllObjects];
}

- (void)watchEndWithDescription:(NSString *)description {
    [self watchWithDescription:description];
    
    NSString *totoalInfo = [NSString stringWithFormat:@"\n总消耗:%.6f", self.passTimeInterval];
    NSString *showInfoString = [[self.timeRecordArray componentsJoinedByString:@"\n"] stringByAppendingString:totoalInfo];
    
    [[[UIAlertView alloc] initWithTitle:@"KKTimeWatch 时间序列" message:showInfoString delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil] show];
}

- (void)watchWithDescription:(NSString *)description {
    NSTimeInterval currentTimeInterval = CACurrentMediaTime();
    NSTimeInterval resultTimeInterval = currentTimeInterval - self.startTimeInterval - self.passTimeInterval;
    self.passTimeInterval = self.passTimeInterval + resultTimeInterval;
    NSString *result = [NSString stringWithFormat:@"%@:%.6f", description, resultTimeInterval];
    @synchronized (self) {
        [self.timeRecordArray addObject:result];
    }
}

@end
