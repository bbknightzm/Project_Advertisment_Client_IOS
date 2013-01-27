//
//  VCCustomNavigationBar.h
//  Custom NavBar
//
//  Created by 朱 文杰 on 12-2-29.
//  Copyright (c) 2012年 Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GCNavigationBar : UINavigationBar
@property (nonatomic, strong) UIImageView *navigationBarBackgroundImage;
@property (nonatomic, strong) UIImage *bgImage;
//@property (nonatomic, strong) UIImage *landscapeBarBackground;
//@property (nonatomic, strong) UIImage *portraitBarBackground;
//- (void)setBackgroundForDeviceOrientation:(UIDeviceOrientation)orientation;
- (void) setNavigationBarBG : (UIImage*)bg;
- (void) clearBackground;
@end
