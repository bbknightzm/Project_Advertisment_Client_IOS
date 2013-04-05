//
//  ExchangedItemViewController.m
//  Advertisment
//
//  Created by bb on 13-4-3.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import "ChangedItemViewController.h"
#import "ChangedItemListCell.h"
#import "UserCenterString.h"

@interface ChangedItemViewController ()

@end

@implementation ChangedItemViewController

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
    UINib *nib = [UINib nibWithNibName:ucciNib bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:ucciIdentifier];
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
    ChangedItemListCell *cell = [self.tableView dequeueReusableCellWithIdentifier:ucciIdentifier];
    
    if (cell == nil)
    {
        cell = [[ChangedItemListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ucciIdentifier];
    }
    
    if (cell != nil)
    {
        switch ([indexPath row])
        {
            case 0:
                [cell setTitleText:ucChangedItem];
                [cell setSubTitleText:ucChangedItem];
                [cell setDescribeText:ucciIdentifier];
                [cell setIconImageFile:[UIImage imageNamed:@"DefaultIcon"]];
                break;
            case 1:
                [cell setTitleText:ucChangedItem];
                [cell setSubTitleText:ucChangedItem];
                [cell setDescribeText:ucciIdentifier];
                [cell setIconImageFile:[UIImage imageNamed:@"DefaultIcon"]];
                break;
            case 2:
                [cell setTitleText:ucChangedItem];
                [cell setSubTitleText:ucChangedItem];
                [cell setDescribeText:ucciIdentifier];
                [cell setIconImageFile:[UIImage imageNamed:@"DefaultIcon"]];
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
    return 75;//150.0;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}



@end
