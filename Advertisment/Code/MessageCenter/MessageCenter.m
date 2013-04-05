//
//  MessageCenter.m
//  hbnlClient
//
//  Created by bb on 1/21/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import "MessageCenter.h"
#import "MessageCenterListCell.h"
#import "MessageCenterString.h"
#import "MessageDetailViewController.h"

@interface MessageCenter ()

@end

@implementation MessageCenter

@synthesize leftLeaf = _leftLeaf;
@synthesize rightLeaf = _rightLeaf;
@synthesize publicBtn = _publicBtn;
@synthesize privateBtn = _privateBtn;
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
    self.navigationItem.title = @"消息中心";
    [self.view setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"BG"]]];
    if (self.leftLeaf) {
        self.leftLeaf.image = [UIImage imageNamed: @"LeftLeaf"];
    }
    if (self.rightLeaf) {
        self.rightLeaf.image = [UIImage imageNamed: @"RightLeaf"];
    }
//    nowStatus = MTE_MESSAGE_PUBLIC;
    [self.privateBtn setImage:[UIImage imageNamed:@"PrivateMessageOn"] forState:UIControlStateSelected];
    [self.privateBtn setImage:[UIImage imageNamed:@"PrivateMessageOff"] forState:UIControlStateNormal];
    [self.publicBtn setImage:[UIImage imageNamed:@"PrivateMessageOn"] forState:UIControlStateSelected];
    [self.publicBtn setImage:[UIImage imageNamed:@"PrivateMessageOff"] forState:UIControlStateNormal];
    [self showPublicMessage:self];
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
    static BOOL nibsRegistered = NO;
    if (!nibsRegistered) {
        UINib *nib = [UINib nibWithNibName:mcNib bundle:nil];
        [self.tableView registerNib:nib forCellReuseIdentifier:mcIdentifier];
        nibsRegistered = YES;
    }
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
            childController = [[MessageDetailViewController alloc]
                               initWithNibName:@"MessageDetailViewController" bundle:nil];
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

-(IBAction) showPublicMessage:(id)sender
{
    nowStatus = MTE_MESSAGE_PUBLIC;
    self.publicBtn.selected = YES;
    self.privateBtn.selected = NO;
//    self.privateBtn
}

-(IBAction) showPrivateMessage:(id)sender
{
    nowStatus = MTE_MESSAGE_PRIVATE;
    self.publicBtn.selected = NO;
    self.privateBtn.selected = YES	;
}

@end
