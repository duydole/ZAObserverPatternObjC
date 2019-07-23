//
//  ViewController.m
//  ObserverPatternDemo
//
//  Created by Duy on 7/23/19.
//  Copyright © 2019 zalo. All rights reserved.
//

#import "ViewController.h"
#import "ZANotificationCenter.h"
#import "ZASampleObserver.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) viewDidLoad {
    
    [super viewDidLoad];
    
    // create a ZANotificationCenter
    ZANotificationCenter *notiCenter = [[ZANotificationCenter alloc] init];
    
    // create a Observer
    ZASampleObserver *observer = [[ZASampleObserver alloc] init];
    
    // Subscribe to NotificationCenter
    [notiCenter attachObserver:observer];
    
    // Change data on notiCenter:
    notiCenter.data = 10;
    
    // Open log to see how it works.
}


@end
