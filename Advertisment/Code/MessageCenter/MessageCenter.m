//
//  MessageCenter.m
//  hbnlClient
//
//  Created by bb on 1/21/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import "MessageCenter.h"

@interface MessageCenter ()

@end

@implementation MessageCenter

@synthesize naviBar = _naviBar;

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

@end
