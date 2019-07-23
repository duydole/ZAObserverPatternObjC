//
//  ZANotificationCenter.h
//  ObserverPatternDemo
//
//  Created by Duy on 7/23/19.
//  Copyright © 2019 zalo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZASampleObserver.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZANotificationCenter : NSObject

@property NSMutableArray<id<Observer>> *observerArrays;

@property (nonatomic) NSUInteger data;

- (void) attachObserver:(id<Observer>)observer;

- (void) removeObserver:(id<Observer>)observer;


@end

NS_ASSUME_NONNULL_END
