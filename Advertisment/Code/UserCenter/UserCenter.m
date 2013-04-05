//
//  UserCenter.m
//  hbnlClient
//
//  Created by bb on 1/21/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import "UserCenter.h"
#import "UserCenterString.h"
#import "UserCenterListCell.h"
#import "ChangedItemViewController.h"
#import "FinishedMissionViewController.h"
#import "InformationViewController.h"
#import "TopHotViewController.h"

@interface UserCenter ()

@end

@implementation UserCenter

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
    self.navigationItem.title = @"账户中心";
    [self.view setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"BG"]]];
    
    if (self.leftLeaf) {
        self.leftLeaf.image = [UIImage imageNamed: @"LeftLeaf"];
    }
    if (self.rightLeaf) {
        self.rightLeaf.image = [UIImage imageNamed: @"RightLeaf"];
    }
//    [self.innerView setBackgroundColor:[UIColor colorWithPatternImage: [UIImage imageNamed: @"UserCenterBG"]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return UCE_MAX;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static BOOL nibsRegistered = NO;
    if (!nibsRegistered) {
        UINib *nib = [UINib nibWithNibName:ucNib bundle:nil];
        [self.tableView registerNib:nib forCellReuseIdentifier:ucIdentifier];
        nibsRegistered = YES;
    }
    
    UserCenterListCell *cell = [self.tableView dequeueReusableCellWithIdentifier:ucIdentifier];
    
    if (cell != nil)
    {
        switch ([indexPath row])
        {
            case UCE_NOW_SCORE:
                [cell setTitleText:ucNowScore];
                [cell setSubTitleText:ucNowScore];
                [cell setDetailPicShow:NO];
                [cell setIcon:[UIImage imageNamed:@"NowScore"]];
                break;
            case UCE_FINISHED_MISSION:
                [cell setTitleText:ucFinishedMission];
                [cell setSubTitleText:ucFinishedMission];
                [cell setDetailPicShow:YES];
                [cell setDetailPicBG:[UIImage imageNamed:@"DetailIcon"]];
                [cell setIcon:[UIImage imageNamed:@"FinishedMission"]];
                break;
            case UCE_TOTAL_SCORE:
                [cell setTitleText:ucTotalScore];
                [cell setSubTitleText:ucTotalScore];
                [cell setDetailPicShow:NO];
                [cell setIcon:[UIImage imageNamed:@"TotalScore"]];
                break;
            case UCE_CHANGED_ITEM:
                [cell setTitleText:ucChangedItem];
                [cell setSubTitleText:ucChangedItem];
                [cell setDetailPicShow:YES];
                [cell setDetailPicBG:[UIImage imageNamed:@"DetailIcon"]];
                [cell setIcon:[UIImage imageNamed:@"ChangedItem"]];
                break;
            case UCE_USED_SCORE:
                [cell setTitleText:ucUsedScore];
                [cell setSubTitleText:ucUsedScore];
                [cell setDetailPicShow:NO];
                [cell setIcon:[UIImage imageNamed:@"UsedScore"]];
                break;
            case UCE_INFORMATION:
                [cell setTitleText:ucInformation];
                [cell setSubTitleText:ucInformation];
                [cell setDetailPicShow:YES];
                [cell setDetailPicBG:[UIImage imageNamed:@"DetailIcon"]];
                [cell setIcon:[UIImage imageNamed:@"Information"]];
                break;
            case UCE_TOP_HOT:
                [cell setTitleText:ucTopHot];
                [cell setSubTitleText:ucTopHot];
                [cell setDetailPicShow:YES];
                [cell setDetailPicBG:[UIImage imageNamed:@"DetailIcon"]];
                [cell setIcon:[UIImage imageNamed:@"TopHot"]];
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
        case UCE_FINISHED_MISSION:
            childController = [[FinishedMissionViewController alloc]
                               initWithNibName:@"FinishedMissionViewController" bundle:nil];
            break;
        case UCE_CHANGED_ITEM:
            childController = [[ChangedItemViewController alloc]
                               initWithNibName:@"ChangedItemViewController" bundle:nil];
            break;
        case UCE_INFORMATION:
            childController = [[InformationViewController alloc]
                               initWithNibName:@"InformationViewController" bundle:nil];
            break;
        case UCE_TOP_HOT:
            childController = [[TopHotViewController alloc]
                               initWithNibName:@"TopHotViewController" bundle:nil];
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
