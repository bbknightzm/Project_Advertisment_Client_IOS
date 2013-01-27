//
//  ExchangeItem.m
//  Advertisment
//
//  Created by bb on 1/27/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import "ExchangeItem.h"

@interface ExchangeItem ()

@end

@implementation ExchangeItem

@synthesize btnConfirm = _btnConfirm;
@synthesize iconView = _iconView;
@synthesize detailBG = _detailBG;
@synthesize detailText = _detailText;
@synthesize consumedCnt = _consumedCnt;
@synthesize exchangeQuantity = _exchangeQuantity;
@synthesize restQuantity = _restQuantity;

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
