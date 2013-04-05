//
//  FinishedMissionViewController.h
//  Advertisment
//
//  Created by bb on 13-4-3.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FinishedMissionViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UIImageView *leftLeaf;

@property (strong, nonatomic) IBOutlet UIImageView *rightLeaf;

@property (strong, nonatomic) IBOutlet UIView *innerView;

@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end
