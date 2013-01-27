//
//  LeveyTabBarControllerViewController.h
//  LeveyTabBarController
//
//  Created by Levey Zhu on 12/15/10.
//  Copyright 2010 VanillaTech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GCTabBar.h"
@class UITabBarController;
@protocol GCTabBarControllerDelegate;
@interface GCTabBarController : UIViewController <GCTabBarDelegate>
{
	GCTabBar *_tabBar;
	UIView      *_containerView;
	UIView		*_transitionView;
	id<GCTabBarControllerDelegate> __weak _delegate;
	NSMutableArray *_viewControllers;
	NSUInteger _selectedIndex;
	
	BOOL _tabBarTransparent;
	BOOL _tabBarHidden;
}

@property(nonatomic, copy) NSMutableArray *viewControllers;

@property(nonatomic, readonly) UIViewController *selectedViewController;
@property(nonatomic) NSUInteger selectedIndex;

// Apple is readonly
@property (nonatomic, readonly) GCTabBar *tabBar;
@property (nonatomic, weak) id<GCTabBarControllerDelegate> delegate;


// Default is NO, if set to YES, content will under tabbar
@property (nonatomic) BOOL tabBarTransparent;
@property (nonatomic) BOOL tabBarHidden;

- (id)initWithViewControllers:(NSArray *)vcs imageArray:(NSArray *)arr;

- (void)hidesTabBar:(BOOL)yesOrNO animated:(BOOL)animated;

// Remove the viewcontroller at index of viewControllers.
- (void)removeViewControllerAtIndex:(NSUInteger)index;

// Insert an viewcontroller at index of viewControllers.
- (void)insertViewController:(UIViewController *)vc withImageDic:(NSDictionary *)dict atIndex:(NSUInteger)index;

@end


@protocol GCTabBarControllerDelegate <NSObject>
@optional
- (BOOL)tabBarController:(GCTabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController;
- (void)tabBarController:(GCTabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController;
@end

@interface UIViewController (GCTabBarControllerSupport)
@property(nonatomic, retain, readonly) GCTabBarController *gcTabBarController;
@end

