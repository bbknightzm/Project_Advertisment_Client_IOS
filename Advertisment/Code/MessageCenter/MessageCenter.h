//
//  MessageCenter.h
//  hbnlClient
//
//  Created by bb on 1/21/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "GCNavigationBar.h"

typedef enum
{
    MTE_MESSAGE_PUBLIC,
    MTE_MESSAGE_PRIVATE,
    MTE_MESSAGE_MAX,
}MESSAGE_TYPE_ENUM;

@interface MessageCenter : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    MESSAGE_TYPE_ENUM nowStatus;
}

@property (strong, nonatomic) IBOutlet UIImageView *leftLeaf;

@property (strong, nonatomic) IBOutlet UIImageView *rightLeaf;

@property (nonatomic, strong) IBOutlet UIButton *publicBtn;

@property (nonatomic, strong) IBOutlet UIButton *privateBtn;

@property (nonatomic, strong) IBOutlet UITableView *tableView;

-(IBAction) showPublicMessage:(id)sender;

-(IBAction) showPrivateMessage:(id)sender;
//@property (strong, nonatomic) IBOutlet GCNavigationBar *naviBar;

@end
