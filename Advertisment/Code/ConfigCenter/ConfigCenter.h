//
//  ConfigCenter.h
//  hbnlClient
//
//  Created by bb on 1/21/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "GCNavigationBar.h"

@interface ConfigCenter : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UIImageView *leftLeaf;

@property (strong, nonatomic) IBOutlet UIImageView *rightLeaf;

@property (strong, nonatomic) IBOutlet UIView *innerView;

@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end
