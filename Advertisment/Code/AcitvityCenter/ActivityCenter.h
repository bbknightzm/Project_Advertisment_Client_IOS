//
//  ActivityCenter.h
//  hbnlClient
//
//  Created by bb on 1/21/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GCNavigationBar.h"

@interface ActivityCenter : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet GCNavigationBar *naviBar;

@property (strong, nonatomic) IBOutlet UITableView *tbView;

@end
