//
//  ActivityCenter.h
//  hbnlClient
//
//  Created by bb on 1/21/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <immobSDK/immobView.h>
//#import "GCNavigationBar.h"

@interface ActivityCenter : UIViewController<UITableViewDelegate, UITableViewDataSource, immobViewDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *leftLeaf;

@property (strong, nonatomic) IBOutlet UIImageView *rightLeaf;

@property (strong, nonatomic) IBOutlet UITableView *tbView;

@property (strong, nonatomic) IBOutlet immobView *immobAdView;

@end
