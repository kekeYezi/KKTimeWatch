//
//  KKViewController.m
//  KKTimeWatch
//
//  Created by keke on 09/02/2017.
//  Copyright (c) 2017 keke. All rights reserved.
//

#import "KKViewController.h"
#import <KKTimeWatch/KKTimeWatch.h>

@interface KKViewController ()

@end

@implementation KKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    KKTimeWatch_Start;
    
    for (int i = 0; i < 100; i++) {
        NSLog(@"%d",i);
    }
    
    KKTimeWatchRecord(@"Log100次 执行时间");
    
    for (int i = 0; i < 1000; i++) {
        NSLog(@"%d",i);
    }
    
    KKTimeWatchRecord(@"Log1000次 执行时间");
    
    for (int i = 0; i < 10000; i++) {
        NSLog(@"%d",i);
    }
    
    KKTimeWatchEnd(@"Log10000次 执行时间");
    
    KKTimeWatch_Reset;
    
    for (int i = 0; i < 1000; i++) {
        NSLog(@"%d",i);
    }
    
    KKTimeWatchEnd(@"Log1000次 执行时间");
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
