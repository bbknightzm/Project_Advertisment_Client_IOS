//
//  ExchangeItemTableCell.m
//  Advertisment
//
//  Created by bb on 1/25/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import "ExchangeItemTableCell.h"

@implementation ExchangeItemTableCell

@synthesize title = _title;
@synthesize subTitle = _subTitle;
@synthesize iconImage = _iconImage;
@synthesize bandImage = _bandImage;
@synthesize bgView = _bgView;
@synthesize bgSelectedView = _bgSelectedView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
//        [self setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"TableCellBG"]]];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
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

- (void) setTableCellSelectedBG : (NSString *) bgName
{
    if (self.bgSelectedView == nil) {
        CGRect frame = self.frame;
        self.bgSelectedView = [[UIImageView alloc] initWithFrame:frame];
        self.bgSelectedView.image = [UIImage imageNamed:bgName];
        [self setSelectedBackgroundView:self.bgSelectedView];
    }
}

- (void) setTitleText:(NSString *) titleTest
{
    self.title.text = titleTest;
}

- (void) setSubTitleText:(NSString *) subtitleTest
{
    self.subTitle.text = subtitleTest;
}

- (void) setIconImageFile:(UIImage *) iconImageName
{
    self.iconImage.image = iconImageName;
}

- (void) setBandImageFile:(UIImage *) bandImageName
{
    self.bandImage.image = bandImageName;
}

@end
