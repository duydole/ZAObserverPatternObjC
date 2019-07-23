//
//  ZANotificationCenter.m
//  ObserverPatternDemo
//
//  Created by Duy on 7/23/19.
//  Copyright © 2019 zalo. All rights reserved.
//

#import "ZANotificationCenter.h"

@implementation ZANotificationCenter

- (instancetype) init {
    self = [super init];
    if (self) {
        _observerArrays = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) attachObserver:(id<Observer>)observer {
    [_observerArrays addObject:observer];
}

- (void) removeObserver:(id<Observer>)observer {
    [_observerArrays removeObject:observer];
}

// when data change:
- (void) setData:(NSUInteger)data {
    _data = data;
    [self notifyAllObservers];
}

// notify to all observer
- (void) notifyAllObservers {
    for (id<Observer> observer in _observerArrays) {
        [observer dataChanged];
    }
}

@end
