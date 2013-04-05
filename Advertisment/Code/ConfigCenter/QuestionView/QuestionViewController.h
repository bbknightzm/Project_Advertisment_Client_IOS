//
//  QuestionViewController.h
//  Advertisment
//
//  Created by bb on 13-4-2.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuestionViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UIImageView *leftLeaf;

@property (strong, nonatomic) IBOutlet UIImageView *rightLeaf;

@property (strong, nonatomic) IBOutlet UIView *innerView;

@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end
