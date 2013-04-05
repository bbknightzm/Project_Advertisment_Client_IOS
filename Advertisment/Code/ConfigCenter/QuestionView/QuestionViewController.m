//
//  QuestionViewController.m
//  Advertisment
//
//  Created by bb on 13-4-2.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import "QuestionViewController.h"
#import "ConfigCenterString.h"
#import "QuestionListCell.h"

@interface QuestionViewController ()

@end

@implementation QuestionViewController

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
    self.navigationItem.title = ccQuestion;
    [self.view setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"BG"]]];
    UINib *nib = [UINib nibWithNibName:ccqNib bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:ccqIdentifier];
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
    QuestionListCell *cell = [self.tableView dequeueReusableCellWithIdentifier:ccqIdentifier];
    
    if (cell == nil)
    {
        cell = [[QuestionListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ccqIdentifier];
    }
    
    if (cell != nil)
    {
        switch ([indexPath row])
        {
            case 0:
                [cell setTitleText:cccuQQ];
                [cell setSubTitleText:defaultQQ];
                break;
            case 1:
                [cell setTitleText:cccuWeiXin];
                [cell setSubTitleText:defaultWeiXin];
                break;
            case 2:
                [cell setTitleText:cccuWeiBo];
                [cell setSubTitleText:defaultWeiBo];
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
    return 150.0;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}


@end
