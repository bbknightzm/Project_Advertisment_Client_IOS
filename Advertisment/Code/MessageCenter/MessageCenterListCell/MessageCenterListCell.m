//
//  MessageCenterListCell.m
//  Advertisment
//
//  Created by bb on 13-4-4.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import "MessageCenterListCell.h"

@implementation MessageCenterListCell

@synthesize title = _title;
@synthesize subTitle = _subTitle;
@synthesize bandImage = _bandImage;
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

-(void) setDetailPicBG:(UIImage*) detailImageName
{
    if (detailImageName)
        self.detailPic.image = detailImageName;
}

-(void) setNewImageBG:(UIImage*) iconImageName
{
    if (iconImageName)
        self.bandImage.image = iconImageName;
}


@end
