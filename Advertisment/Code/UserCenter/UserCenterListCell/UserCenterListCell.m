//
//  UserCenterListCell.m
//  Advertisment
//
//  Created by bb on 13-4-1.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import "UserCenterListCell.h"

@implementation UserCenterListCell

@synthesize image = _imange;
@synthesize title = _title;
@synthesize subTitle = _subTitle;
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

-(void) setSubTitleText:(NSString*) text
{
    if (text)
        self.subTitle.text = text;
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
