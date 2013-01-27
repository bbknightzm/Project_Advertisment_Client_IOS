//
//  ActivityCenter.m
//  hbnlClient
//
//  Created by bb on 1/21/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import "ActivityCenter.h"
#import "ExchangeItemTableCell.h"

@interface ActivityCenter ()

@end

@implementation ActivityCenter

@synthesize naviBar = _naviBar;
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
    [self.naviBar setNavigationBarBG:[UIImage imageNamed:@"NavigationBar"]];
    [self.view setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"BG"]]];
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

#pragma mark Table Delegate Methods
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 90.0;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}
@end
