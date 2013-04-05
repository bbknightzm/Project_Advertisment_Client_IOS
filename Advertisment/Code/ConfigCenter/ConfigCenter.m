//
//  ConfigCenter.m
//  hbnlClient
//
//  Created by bb on 1/21/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import "ConfigCenter.h"
#import "ConfigCenterString.h"
#import "ConfigCenterListCell.h"
#import "SuggestionViewController.h"
#import "QuestionViewController.h"
#import "ConnectUsViewController.h"

@interface ConfigCenter ()

@end

@implementation ConfigCenter

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
    self.navigationItem.title = @"配置中心";
    [self.view setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"BG"]]];
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
    return CCE_MAX;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static BOOL nibsRegistered = NO;
    if (!nibsRegistered) {
        UINib *nib = [UINib nibWithNibName:ccNib bundle:nil];
        [self.tableView registerNib:nib forCellReuseIdentifier:ccIdentifier];
        nibsRegistered = YES;
    }
    
    ConfigCenterListCell *cell = [self.tableView dequeueReusableCellWithIdentifier:ccIdentifier];
    
    if (cell != nil)
    {
        switch ([indexPath row])
        {
            case CCE_SUGGESTION:
                [cell setTitleText:ccSuggestion];
                [cell setDetailPicShow:YES];
                [cell setDetailPicBG:[UIImage imageNamed:@"DetailIcon"]];
                [cell setIcon:[UIImage imageNamed:@"Suggestion"]];
                break;
            case CCE_BIND_ACCOUNT:
                [cell setTitleText:ccBlindAccount];
                [cell setDetailPicShow:YES];
                [cell setDetailPicBG:[UIImage imageNamed:@"DetailIcon"]];
                [cell setIcon:[UIImage imageNamed:@"BlindAccount"]];
                break;
            case CCE_QUESTION:
                [cell setTitleText:ccQuestion];
                [cell setDetailPicShow:YES];
                [cell setDetailPicBG:[UIImage imageNamed:@"DetailIcon"]];
                [cell setIcon:[UIImage imageNamed:@"Question"]];
                break;
            case CCE_CHECK_UPDATE:
                [cell setTitleText:ccCheckUpdate];
                [cell setDetailPicShow:YES];
                [cell setDetailPicBG:[UIImage imageNamed:@"DetailIcon"]];
                [cell setIcon:[UIImage imageNamed:@"CheckUpdate"]];
                break;
            case CCE_CONNECT_US:
                [cell setTitleText:ccConnectUs];
                [cell setDetailPicShow:YES];
                [cell setDetailPicBG:[UIImage imageNamed:@"DetailIcon"]];
                [cell setIcon:[UIImage imageNamed:@"ConnectUs"]];
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
    UIViewController *childController = nil;
    switch ([indexPath row])
    {
        case CCE_SUGGESTION:
            childController = [[SuggestionViewController alloc] init];
            break;
        case CCE_QUESTION:
            childController = [[QuestionViewController alloc]
                               initWithNibName:@"QuestionViewController" bundle:nil];
            break;
        case CCE_CONNECT_US:
            childController = [[ConnectUsViewController alloc]
                               initWithNibName:@"ConnectUsViewController" bundle:nil];
            break;
        default:
            break;
    }
    if (childController)
    {
        [self.navigationController pushViewController:childController animated:YES];
    }
    return nil;
}

@end
