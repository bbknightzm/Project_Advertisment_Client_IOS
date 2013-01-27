//
//  LeveyTabBar.h
//  LeveyTabBarController
//
//  Created by Levey Zhu on 12/15/10.
//  Copyright 2010 VanillaTech. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GCTabBarDelegate;

@interface GCTabBar : UIView
{
	UIImageView *_backgroundView;
	id<GCTabBarDelegate> __weak _delegate;
	NSMutableArray *_buttons;
}
@property (nonatomic, strong) UIImageView *backgroundView;
@property (nonatomic, weak) id<GCTabBarDelegate> delegate;//
@property (nonatomic, strong) NSMutableArray *buttons;

- (id)initWithFrame:(CGRect)frame buttonImages:(NSArray *)imageArray;
- (void)selectTabAtIndex:(NSInteger)index;
- (void)removeTabAtIndex:(NSInteger)index;
- (void)insertTabWithImageDic:(NSDictionary *)dict atIndex:(NSUInteger)index;
- (void)setBackgroundImage:(UIImage *)img;

@end
@protocol GCTabBarDelegate<NSObject>
@optional
- (void)tabBar:(GCTabBar *)tabBar didSelectIndex:(NSInteger)index;
@end
