//
//  ZASampleClass.m
//  ObserverPatternDemo
//
//  Created by Duy on 7/23/19.
//  Copyright © 2019 zalo. All rights reserved.
//

#import "ZASampleObserver.h"

@implementation ZASampleObserver

- (instancetype)init
{
    self = [super init];
    if (self) {
        _identifier = @"";
    }
    return self;
}

- (void) dataChanged {
    NSLog(@"Notification center notified: Data changed.");
}

@end
