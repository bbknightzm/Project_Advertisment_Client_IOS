//
//  TopHotViewController.m
//  hbnlClient
//
//  Created by bb on 1/21/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import "TopHotViewController.h"
#import "MessageCenterListCell.h"
#import "MessageCenterString.h"
#import "UserCenterString.h"

@interface TopHotViewController ()

@end

@implementation TopHotViewController

@synthesize leftLeaf = _leftLeaf;
@synthesize rightLeaf = _rightLeaf;
@synthesize hottop5Btn = _hottop5Btn;
@synthesize hottop10Btn = _hottop10Btn;
@synthesize hottopExchangeItemBtn = _hottopExchangeItemBtn;
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
    self.navigationItem.title = ucTopHot;
    [self.view setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"BG"]]];
    nowStatus = HOT_TOP_5;
    UINib *nib = [UINib nibWithNibName:mcNib bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:mcIdentifier];
    if (self.leftLeaf) {
        self.leftLeaf.image = [UIImage imageNamed: @"LeftLeaf"];
    }
    if (self.rightLeaf) {
        self.rightLeaf.image = [UIImage imageNamed: @"RightLeaf"];
    }
    [self.hottop5Btn setImage:[UIImage imageNamed:@"Tophot5On"] forState:UIControlStateSelected];
    [self.hottop5Btn setImage:[UIImage imageNamed:@"Tophot5Off"] forState:UIControlStateNormal];
    [self.hottop10Btn setImage:[UIImage imageNamed:@"Tophot10On"] forState:UIControlStateSelected];
    [self.hottop10Btn setImage:[UIImage imageNamed:@"Tophot10Off"] forState:UIControlStateNormal];
    [self.hottopExchangeItemBtn setImage:[UIImage imageNamed:@"TophotItemOn"] forState:UIControlStateSelected];
    [self.hottopExchangeItemBtn setImage:[UIImage imageNamed:@"TophotItemOff"] forState:UIControlStateNormal];
    
    [self showHotTop5:self ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MessageCenterListCell *cell = [self.tableView dequeueReusableCellWithIdentifier:mcIdentifier];
    
    if (cell == nil)
    {
        cell = [[MessageCenterListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:mcIdentifier];
    }
    
    if (cell != nil)
    {
        switch ([indexPath row])
        {
            case 0:
//                [cell setTitleText:cccuQQ];
//                [cell setSubTitleText:defaultQQ];
                break;
            case 1:
//                [cell setTitleText:cccuWeiXin];
//                [cell setSubTitleText:defaultWeiXin];
                break;
            case 2:
//                [cell setTitleText:cccuWeiBo];
//                [cell setSubTitleText:defaultWeiBo];
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
    return 74.0;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *childController = nil;
    switch ([indexPath row])
    {
        case 0:
        {
/*            childController = [[MessageDetailViewController alloc]
                               initWithNibName:@"MessageDetailViewController" bundle:nil];*/
        }
            break;
        case 1:
        {
        }
            break;
        case 2:
        {
        }
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

-(IBAction) showHotTop5:(id)sender
{
    nowStatus = HOT_TOP_5;
    self.hottop5Btn.selected = YES;
    self.hottop10Btn.selected = NO;
    self.hottopExchangeItemBtn.selected = NO;
    NSLog(@"top 5");
}

-(IBAction) showHotTop10:(id)sender
{
    nowStatus = HOT_TOP_10;
    self.hottop5Btn.selected = NO;
    self.hottop10Btn.selected = YES;
    self.hottopExchangeItemBtn.selected = NO;
    NSLog(@"top 10");
}

-(IBAction) showExchangeItem10:(id)sender
{
    nowStatus = HOT_TOP_EXCHANGE_ITEM_10;
    self.hottop5Btn.selected = NO;
    self.hottop10Btn.selected = NO;
    self.hottopExchangeItemBtn.selected = YES;
    NSLog(@"exchange item 10");
}

@end
