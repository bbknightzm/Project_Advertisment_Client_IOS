//
//  TopHotViewController.h
//  hbnlClient
//
//  Created by bb on 1/21/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "GCNavigationBar.h"

typedef enum
{
    HOT_TOP_5,
    HOT_TOP_10,
    HOT_TOP_EXCHANGE_ITEM_10,
}HOT_TOP_TYPE_ENUM;

@interface TopHotViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    HOT_TOP_TYPE_ENUM nowStatus;
}

@property (strong, nonatomic) IBOutlet UIImageView *leftLeaf;

@property (strong, nonatomic) IBOutlet UIImageView *rightLeaf;

@property (nonatomic, strong) IBOutlet UIButton *hottop5Btn;

@property (nonatomic, strong) IBOutlet UIButton *hottop10Btn;

@property (nonatomic, strong) IBOutlet UIButton *hottopExchangeItemBtn;

@property (nonatomic, strong) IBOutlet UITableView *tableView;

-(IBAction) showHotTop5:(id)sender;

-(IBAction) showHotTop10:(id)sender;

-(IBAction) showExchangeItem10:(id)sender;
//@property (strong, nonatomic) IBOutlet GCNavigationBar *naviBar;

@end
