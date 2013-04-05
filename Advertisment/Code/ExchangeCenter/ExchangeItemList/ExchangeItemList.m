//
//  ExchangeItemList.m
//  Advertisment
//
//  Created by bb on 2/15/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import "ExchangeItemList.h"
#import "ExchangeItemListCell.h"
#import "ExchangeItem.h"

#import "ExchangeItemTableCell.h"

@interface ExchangeItemList ()

@end

@implementation ExchangeItemList

@synthesize leftLeaf = _leftLeaf;
@synthesize rightLeaf = _rightLeaf;
@synthesize tbView = _tbView;

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
    //    [self.naviBar setNavigationBarBG:[UIImage imageNamed:@"NavigationBar"]];
    [self.view setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"BG"]]];
    self.navigationItem.title = @"物品列表";
    UINib *nib = [UINib nibWithNibName:@"ExchangeItemListCell" bundle:nil];
    [self.tbView registerNib:nib forCellReuseIdentifier:@"ExchangeItemListIdentifier"];
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
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (0)
    {
        NSString *CustomCellIdentifier = @"ExchangeItemIdentifier";
        
/*        static BOOL nibsRegistered = NO;
        if (!nibsRegistered) {
            UINib *nib = [UINib nibWithNibName:@"ExchangeItemTableCell" bundle:nil];
            [self.tbView registerNib:nib forCellReuseIdentifier:CustomCellIdentifier];
//            nibsRegistered = YES;
        }*/
        
        ExchangeItemTableCell *cell = [self.tbView dequeueReusableCellWithIdentifier:CustomCellIdentifier];
        
        if (cell != nil)
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
            [cell setTableCellBG:@"TableCellBG"];
        }
        return cell;
    }
    else
    {
    NSString *CustomCellIdentifier = @"ExchangeItemListIdentifier";
/*    static BOOL nibsRegistered = NO;
    if (!nibsRegistered)
    {
        UINib *nib = [UINib nibWithNibName:@"ExchangeItemListCell" bundle:nil];
        [self.tbView registerNib:nib forCellReuseIdentifier:CustomCellIdentifier];
            nibsRegistered = YES;
    }*/
        
    ExchangeItemListCell *cell = [self.tbView dequeueReusableCellWithIdentifier:CustomCellIdentifier];
        
    if (cell != nil)
    {
        switch ([indexPath row])
        {
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
        [cell setTableCellBG:@"TableCellBG"];
        [cell setItemCallBack:self];
    }
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *childController = nil;
    switch ([indexPath row])
    {
        case 0:
        {
            childController = [[ExchangeItem alloc]
                               initWithNibName:@"ExchangeItem" bundle:nil];
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
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
}

- (void) itemCallBack : (id) sender
{
    NSLog(@"item call back");
    UIViewController *childController = nil;
    childController = [[ExchangeItem alloc]
    initWithNibName:@"ExchangeItem" bundle:nil];
    if (childController)
    {
        [self.navigationController pushViewController:childController animated:YES];
    }
}
@end
