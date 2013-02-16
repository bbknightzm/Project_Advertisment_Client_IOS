//
//  ExchangeItemListCell.m
//  Advertisment
//
//  Created by bb on 2/15/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import "ExchangeItemListCell.h"
//#import "ExchangeItem.h"

@interface ExchangeItemListCell ()

@end

@implementation ExchangeItemListCell

@synthesize leftBtn = _leftBtn;

@synthesize rightBtn = _rightBtn;

@synthesize bgView = _bgView;

//@synthesize bgSelectedView = _bgSelectedView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
//        [self setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"TableCellBG"]]];
/*        if (self.leftBtn)
        {
            [self.leftBtn addTarget:self action:@selector(leftBtnClick:) forControlEvents:UIControlEventTouchDown];
        }
        if (self.rightBtn)
        {
            [self.rightBtn addTarget:self action:@selector(rightBtnClick:) forControlEvents:UIControlEventTouchDown];
        }*/
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) setLeftBtnBG : (NSString*) bgName
{
    if (self.leftBtn) {
        [self.leftBtn setImage:[UIImage imageNamed:bgName] forState:UIControlStateNormal];
//        [self.leftBtn addTarget:self action:@selector(leftBtnClick:) forControlEvents:UIControlEventTouchDown];
    }
}

- (void) setRightBtnBG : (NSString*) bgName
{
    if (self.rightBtn) {
        [self.rightBtn setImage:[UIImage imageNamed:bgName] forState:UIControlStateNormal];
//        [self.rightBtn addTarget:self action:@selector(rightBtnClick:) forControlEvents:UIControlEventTouchDown];
    }
}

- (void) setTableCellBG : (NSString *) bgName
{
    if (self.bgView == nil)
    {
        CGRect frame = self.frame;
        self.bgView = [[UIImageView alloc] initWithFrame:frame];
        self.bgView.image = [UIImage imageNamed:bgName];
        [self setBackgroundView: self.bgView];
    }
}

/*
- (void) setTableCellSelectedBG : (NSString *) bgName
{
    if (self.bgSelectedView == nil) {
        CGRect frame = self.frame;
        self.bgSelectedView = [[UIImageView alloc] initWithFrame:frame];
        self.bgSelectedView.image = [UIImage imageNamed:bgName];
        [self setSelectedBackgroundView:self.bgSelectedView];
    }
}
*/

- (void)leftBtnClick:(id)sender
{
    NSLog(@"left click");
/*  UIViewController *childController = nil;
    childController = [[ExchangeItem alloc]
                               initWithNibName:@"ExchangeItem" bundle:nil];
    if (childController)
    {
        [self.navigationController pushViewController:childController animated:YES];
    }
*/
}

- (void)rightBtnClick:(id)sender
{
    NSLog(@"right click");
}

- (void) setItemCallBack : (id) backid
{
    [self.leftBtn addTarget:backid action:@selector(itemCallBack:) forControlEvents:UIControlEventTouchDown];
    [self.rightBtn addTarget:backid action:@selector(itemCallBack:) forControlEvents:UIControlEventTouchDown];
}
@end
