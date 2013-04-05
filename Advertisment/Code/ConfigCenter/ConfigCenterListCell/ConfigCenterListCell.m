//
//  ConfigCenterListCell.m
//  Advertisment
//
//  Created by bb on 13-4-1.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import "ConfigCenterListCell.h"

@implementation ConfigCenterListCell

@synthesize image = _imange;
@synthesize title = _title;
@synthesize detailPic = _detailPic;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) setTitleText:(NSString*) text
{
    if (text)
        self.title.text = text;
}

-(void) setDetailPicShow:(BOOL)isShow
{
    if (isShow)
        self.detailPic.hidden = NO;
    else
        self.detailPic.hidden = YES;
}

-(void) setDetailPicBG:(UIImage*) detailImageName
{
    if (detailImageName)
        self.detailPic.image = detailImageName;
}

-(void) setIcon:(UIImage*) iconImageName
{
    if (iconImageName)
        self.image.image = iconImageName;
}

@end
