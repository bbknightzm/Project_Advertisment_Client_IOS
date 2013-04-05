//
//  InformationViewController.m
//  Advertisment
//
//  Created by bb on 13-4-3.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import "InformationViewController.h"
#import "InformationListCell.h"
#import "UserCenterString.h"

@interface InformationViewController ()

@end

@implementation InformationViewController

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
    UINib *nib = [UINib nibWithNibName:uciNib bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:uciIdentifier];
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
    return UCIE_MAX;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    InformationListCell *cell = [self.tableView dequeueReusableCellWithIdentifier:uciIdentifier];
    
    if (cell == nil)
    {
        cell = [[InformationListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:uciIdentifier];
    }
    
    if (cell != nil)
    {
        switch ([indexPath row])
        {
            case UCIE_NAME:
                [cell setTitleText:uciName];
                [cell setSubTitleText:uciName];
                [cell setBindAction:@selector(bindName:) to:self];
                break;
            case UCIE_BIRTHDAY:
                [cell setTitleText:uciBirthday];
                [cell setSubTitleText:uciBirthday];
                [cell setBindAction:@selector(bindBirthday:) to:self];
                break;
            case UCIE_WEIBO:
                [cell setTitleText:uciWeibo];
                [cell setSubTitleText:uciWeibo];
                [cell setBindAction:@selector(bindWeibo:) to:self];
                break;
            case UCIE_CELLPHONE:
                [cell setTitleText:uciCellphone];
                [cell setSubTitleText:uciCellphone];
                [cell setBindAction:@selector(bindCellphone:) to:self];
                break;
            case UCIE_EMAIL:
                [cell setTitleText:uciEmail];
                [cell setSubTitleText:uciEmail];
                [cell setBindAction:@selector(bindEmail:) to:self];
                break;
            case UCIE_QQ:
                [cell setTitleText:uciQQ];
                [cell setSubTitleText:uciQQ];
                [cell setBindAction:@selector(bindQQ:) to:self];
                break;
            case UCIE_GENDER:
                [cell setTitleText:uciGender];
                [cell setSubTitleText:uciGender];
                [cell setBindAction:@selector(bindGender:) to:self];
                break;
            case UCIE_ADDRESS:
                [cell setTitleText:uciAddress];
                [cell setSubTitleText:uciAddress];
                [cell setBindAction:@selector(bindAddress:) to:self];
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


// blind action
-(void) bindName:(id)sender
{
    NSLog(@"bindName");
}
-(void) bindBirthday:(id)sender
{
    NSLog(@"bindBirthday");
}
-(void) bindWeibo:(id)sender
{
    NSLog(@"bindWeibo");
}
-(void) bindCellphone:(id)sender
{
    NSLog(@"bindCellphone");
}
-(void) bindEmail:(id)sender
{
    NSLog(@"bindEmail");
}
-(void) bindQQ:(id)sender
{
    NSLog(@"bindQQ");
}
-(void) bindGender:(id)sender
{
    NSLog(@"bindGender");
}
-(void) bindAddress:(id)sender
{
    NSLog(@"bindAddress");
}
@end
