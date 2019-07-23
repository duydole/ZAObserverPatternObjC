//
//  ZASampleClass.h
//  ObserverPatternDemo
//
//  Created by Duy on 7/23/19.
//  Copyright © 2019 zalo. All rights reserved.
//

#import <Foundation/Foundation.h>

// Must implement this protocol, if you want to Subscribe the NotificationCenter.
@protocol Observer <NSObject>

@property NSString* identifier;     // id of observer

- (void) dataChanged;               // implement this function to received notification when data changed.

@end

@interface ZASampleObserver : NSObject<Observer>

@property NSString* identifier;

- (void) dataChanged;

@end
