//
//  VCCustomNavigationBar.m
//  Custom NavBar
//
//  Created by 朱 文杰 on 12-2-29.
//  Copyright (c) 2012年 Home. All rights reserved.
//

#import "GCNavigationBar.h"

@implementation GCNavigationBar
@synthesize navigationBarBackgroundImage = _navigationBarBackgroundImage;
@synthesize bgImage = _bgImage;
//@synthesize landscapeBarBackground = _landscapeBarBackground;
//@synthesize portraitBarBackground = _portraitBarBackground;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
//        if (self.navigationBarBackgroundImage == nil)
//        self.navigationBarBackgroundImage = [[UIImageView alloc] initWithFrame:self.frame];
//        self.navigationBarBackgroundImage.image = self.bgImage;//.landscapeBarBackground;
    }
    return self;
}

- (void)awakeFromNib {
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeBackgroundImage:) name:UIDeviceOrientationDidChangeNotification object:NULL];
//    if (self.navigationBarBackgroundImage == nil)
//        self.navigationBarBackgroundImage = [[UIImageView alloc] initWithFrame:self.frame];
//    self.navigationBarBackgroundImage.image = self.bgImage;//.landscapeBarBackground;
}

- (void)drawRect:(CGRect)rect
{
    if (self.navigationBarBackgroundImage)
        [self.navigationBarBackgroundImage.image drawInRect:rect];
    else
        [super drawRect:rect];
}
/*
- (void)setBackgroundForDeviceOrientation:(UIDeviceOrientation)orientation;
{
    self.navigationBarBackgroundImage = [[UIImageView alloc] initWithFrame:self.frame];
    if ((orientation == UIDeviceOrientationLandscapeLeft) 
        || (orientation == UIDeviceOrientationLandscapeRight)) {
        self.navigationBarBackgroundImage.image = self.landscapeBarBackground;
    }
    else if (orientation == UIDeviceOrientationPortrait) {
        self.navigationBarBackgroundImage.image = self.portraitBarBackground;
    }
    [self setNeedsDisplay];
}
*/
- (void)clearBackground
{
    self.navigationBarBackgroundImage = nil;
    [self setNeedsDisplay];
}

- (void)dealloc {
//   [[NSNotificationCenter defaultCenter] removeObserver:self];
//    [super dealloc];
}
/*
- (void)changeBackgroundImage:(NSNotification *)notification {
    UIDeviceOrientation currentOrientation = [[UIDevice currentDevice] orientation];
    if ((currentOrientation == UIDeviceOrientationPortraitUpsideDown)
        || (currentOrientation == UIDeviceOrientationFaceUp)
        || (currentOrientation == UIDeviceOrientationFaceDown)
        || (currentOrientation == UIDeviceOrientationUnknown)) {
        return;
    }
    [self setBackgroundForDeviceOrientation:currentOrientation];
}
*/

- (void) setNavigationBarBG : (UIImage*)bg
{
    if (bg != nil)
    {
        if (self.bgImage != bg)
        {
            self.bgImage = bg;
            [self setBackgroundImage:bg forBarMetrics:UIBarMetricsDefault];
            if (self.navigationBarBackgroundImage == nil)
            {
                CGRect frame = self.frame;
                self.navigationBarBackgroundImage = [[UIImageView alloc] initWithFrame:frame];
            }
            self.navigationBarBackgroundImage.image = self.bgImage;
            [self setNeedsDisplay];
        }
    }
}

@end
