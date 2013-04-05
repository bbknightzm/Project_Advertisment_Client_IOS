//
//  MessageDetailViewController.m
//  Advertisment
//
//  Created by bb on 13-4-4.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import "MessageDetailViewController.h"

@interface MessageDetailViewController ()

@end

@implementation MessageDetailViewController

@synthesize leftLeaf = _leftLeaf;
@synthesize rightLeaf = _rightLeaf;
@synthesize mainTitle = _mainTitle;
@synthesize detailContent = _detailContent;
@synthesize deleteBtn = _deleteBtn;

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
    [self.deleteBtn setImage:[UIImage imageNamed:@"MessageDeleteBtn"] forState:UIControlStateNormal];
    [self.deleteBtn addTarget:self action:@selector(deleteMessage:) forControlEvents:UIControlEventTouchDown];
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

- (void)deleteMessage:(id)sender
{
    NSLog(@"delete message.");
}

-(void) setMainTitleText:(NSString*)text
{
    if (text)
        self.mainTitle.text = text;
}

-(void) setDetailContentText:(NSString*)text
{
    if (text)
        self.detailContent.text = text;
}

@end
