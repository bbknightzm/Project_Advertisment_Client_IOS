//
//  ConnectUsViewController.m
//  Advertisment
//
//  Created by bb on 13-4-1.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import "ConnectUsViewController.h"
#import "ConfigCenterString.h"
#import "ConnectUsListCell.h"

@interface ConnectUsViewController ()

@end

@implementation ConnectUsViewController

@synthesize leftLeaf = _leftLeaf;
@synthesize rightLeaf = _rightLeaf;
@synthesize innerView = _innerView;
@synthesize tableView = _tableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"NavigationBar"] forBarMetrics:UIBarMetricsDefault];
    self.navigationItem.title = ccConnectUs;
    [self.view setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"BG"]]];
    UINib *nib = [UINib nibWithNibName:cccuNib bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:cccuIdentifier];
    if (self.leftLeaf) {
        self.leftLeaf.image = [UIImage imageNamed: @"LeftLeaf"];
    }
    if (self.rightLeaf) {
        self.rightLeaf.image = [UIImage imageNamed: @"RightLeaf"];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return CCCUE_MAX;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
/*    static BOOL nibsRegistered = NO;
    if (!nibsRegistered) {
        UINib *nib = [UINib nibWithNibName:cccuNib bundle:nil];
        [self.tableView registerNib:nib forCellReuseIdentifier:cccuIdentifier];
        nibsRegistered = YES;
    }*/
    
    ConnectUsListCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cccuIdentifier];
    
    if (cell == nil)
    {
        cell = [[ConnectUsListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cccuIdentifier];
    }
    
    if (cell != nil)
    {
        switch ([indexPath row])
        {
            case CCCUE_QQ:
                [cell setTitleText:cccuQQ];
                [cell setSubTitleText:defaultQQ];
                break;
            case CCCUE_WEIXIN:
                [cell setTitleText:cccuWeiXin];
                [cell setSubTitleText:defaultWeiXin];
                break;
            case CCCUE_WEIBO:
                [cell setTitleText:cccuWeiBo];
                [cell setSubTitleText:defaultWeiBo];
                break;
            case CCCUE_EMAIL:
                [cell setTitleText:cccuEMail];
                [cell setSubTitleText:defaultEMail];
                break;
            default:
                break;
        }
    }
    while (cell == nil) {
        NSLog(@"cell is nil.");
    }
    return cell;
}

#pragma mark Table Delegate Methods
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60.0;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

@end
