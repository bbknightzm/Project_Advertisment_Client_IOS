//
//  ActivityCenter.m
//  hbnlClient
//
//  Created by bb on 1/21/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import "ActivityCenter.h"
#import "ExchangeItemTableCell.h"
#import "ExchangeItemListCell.h"
#import "ExchangeItem.h"
#import "immobViewController.h"
#import "GCTabBarController.h"

@interface ActivityCenter ()

@end

@implementation ActivityCenter

//@synthesize naviBar = _naviBar;
@synthesize tbView = _tbView;
@synthesize immobAdView = _immobAdView;

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
    [self.view setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"BG"]]];
    self.navigationItem.title = @"赚分中心";
    
    self.immobAdView = [[immobViewController alloc] initWithAdUnitID:@"d2b0c4296dc009ddc00d10da9c4cf83e"];
    self.immobAdView.delegate = self;

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
    if (1)
    {
        static NSString *CustomCellIdentifier = @"ExchangeItemIdentifier";
        
        static BOOL nibsRegistered = NO;
        if (!nibsRegistered) {
            UINib *nib = [UINib nibWithNibName:@"ExchangeItemTableCell" bundle:nil];
            [self.tbView registerNib:nib forCellReuseIdentifier:CustomCellIdentifier];
            nibsRegistered = YES;
        }
        
        ExchangeItemTableCell *cell = [self.tbView dequeueReusableCellWithIdentifier:CustomCellIdentifier];
        
        if (cell)
        {
            //        for (int i = 0; i < 1; i++)
            {
                
                switch ([indexPath row]) {
                    case 0:
                        [cell setTitleText:@"QQ币兑换"];
                        [cell setSubTitleText:@"subtitle : qq money title."];
                        [cell setIconImageFile:[UIImage imageNamed: @"TableCell01"]];
                        [cell setBandImageFile:[UIImage imageNamed: @"Band1"]];
                        break;
                    case 1:
                        [cell setTitleText:@"手机充值卡"];
                        [cell setSubTitleText:@"subtitle : mobile phone card."];
                        [cell setIconImageFile:[UIImage imageNamed: @"TableCell02"]];
                        [cell setBandImageFile:[UIImage imageNamed: @"Band1"]];
                        break;
                    case 2:
                        [cell setTitleText:@"实物礼品"];
                        [cell setSubTitleText:@"subtitle : presents for exchange."];
                        [cell setIconImageFile:[UIImage imageNamed: @"TableCell03"]];
                        [cell setBandImageFile:[UIImage imageNamed: @"Band1"]];
                        break;
                    default:
                        break;
                }
            }
        }
        [cell setTableCellBG:@"TableCellBG"];
        return cell;
    }
    else
    {
        static NSString *CustomCellIdentifier = @"ExchangeItemListIdentifier";
        
        static BOOL nibsRegistered = NO;
        if (!nibsRegistered) {
            UINib *nib = [UINib nibWithNibName:@"ExchangeItemListCell" bundle:nil];
            [self.tbView registerNib:nib forCellReuseIdentifier:CustomCellIdentifier];
            nibsRegistered = YES;
        }
        
        ExchangeItemListCell *cell = [self.tbView dequeueReusableCellWithIdentifier:CustomCellIdentifier];
        
        if (cell)
        {
            //        for (int i = 0; i < 1; i++)
            {
                switch ([indexPath row]) {
                    case 0:
                        [cell setLeftBtnBG:@"ListCell01"];
                        [cell setRightBtnBG:@"ListCell02"];
                        break;
                    case 1:
                        break;
                    case 2:
                        break;
                    default:
                        break;
                }
            }
        }
        [cell setTableCellBG:@"TableCellBG"];
        return cell;
    }
}

#pragma mark Table Delegate Methods
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 83.0;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *childController = nil;
    switch ([indexPath row])
    {
        case 0:
        {
            childController = [[ExchangeItem alloc]
                               initWithNibName:@"ExchangeItem" bundle:nil];
            if (childController)
            {
                [self.navigationController pushViewController:childController animated:YES];
            }
        }
            break;
        case 1:
        {
            [self.immobAdView immobViewRequest];
        }
            break;
        case 2:
        {
        }
            break;
        default:
            break;
    }
    /*
    ExchangeItem *childController = [[ExchangeItem alloc]
                                     initWithNibName:@"ExchangeItem" bundle:nil];
    //    NSUInteger row = [indexPath row];
    //    NSString *detailMessage = [[NSString alloc]
    //                               initWithFormat:@"你选择了电影：%@.", row];
    //    childController.title = detailMessage;
    [self.navigationController pushViewController:childController animated:YES];
    */
    return nil;
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
}

// immob
- (UIViewController *)immobViewController
{
    return self;
}

- (void) immobViewDidReceiveAd
{
    [self.immobAdView immobViewDisplay];
    [self.parentViewController.view addSubview:self.immobAdView];
    GCTabBarController *tab = self.parentViewController.gcTabBarController;
    [tab hidesTabBar:YES animated:YES];
//    [self parentViewController] view
    NSLog(@"immobView did received");
}

- (void) onDismissScreen:(immobView *)immobView
{
    GCTabBarController *tab = self.parentViewController.gcTabBarController;
    [tab hidesTabBar:NO animated:YES];
    NSLog(@"immobView dismiss screen");
}

@end
