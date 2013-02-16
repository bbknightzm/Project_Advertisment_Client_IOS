//
//  immobViewController.h
//  Advertisment
//
//  Created by bb on 2/5/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <immobSDK/immobView.h>

@interface immobViewController : UIViewController<immobViewDelegate>

/*
enum ENUM_WALL_CO : int
{
    ENUM_IMMOB,
    ENUM_MAX,
};

@property (nonatomic) enum ENUM_WALL_CO wallType;

@property (nonatomic, strong) UIView *adView_AdWall;
*/

@property (nonatomic, strong) immobView *adwallview;
@end
