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

@synthesize leftLeaf = _leftLeaf;
@synthesize rightLeaf = _rightLeaf;
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
    [self.view setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"BG"]]];
    self.iconView.image = [UIImage imageNamed:@"ExchangeItem"];
    self.detailBG.image = [UIImage imageNamed:@"ExchangeItemBG"];
    [self.btnConfirm setImage:[UIImage imageNamed:@"ExchangeItemOK"] forState:UIControlStateNormal];
    [self.btnConfirm addTarget:self action:@selector(exchangeConfirm:) forControlEvents:UIControlEventTouchDown];
     self.navigationItem.title = @"兑换物品";
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

- (void)exchangeConfirm:(id)sender
{
    NSLog(@"confirm");
}
@end
