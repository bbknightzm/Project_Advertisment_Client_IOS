//
//  ExchangeCenter.h
//  hbnlClient
//
//  Created by bb on 1/21/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "GCNavigationBar.h"

@interface ExchangeCenter : UIViewController<UIScrollViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UIImageView *leftLeaf;

@property (strong, nonatomic) IBOutlet UIImageView *rightLeaf;

@property (strong, nonatomic) IBOutlet UIScrollView *adScrollView;

@property (strong, nonatomic) IBOutlet UIImageView *adImageView;

@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;

@property (strong, nonatomic) IBOutlet UIView *userInfoView;

@property (strong, nonatomic) IBOutlet UIView *adView;


//@property (strong, nonatomic) IBOutlet GCNavigationBar *naviBar;

@property (strong, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)changePage:(id)sender;

- (void)scrollViewDidScroll:(UIScrollView *)sender;

@end
