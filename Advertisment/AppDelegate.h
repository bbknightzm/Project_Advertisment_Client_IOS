//
//  AppDelegate.h
//  Advertisment
//
//  Created by bb on 1/25/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GCTabBarController.h"
#import "ExchangeCenter.h"
#import "ActivityCenter.h"
#import "UserCenter.h"
#import "MessageCenter.h"
#import "ConfigCenter.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) GCTabBarController *tbController;

@end
