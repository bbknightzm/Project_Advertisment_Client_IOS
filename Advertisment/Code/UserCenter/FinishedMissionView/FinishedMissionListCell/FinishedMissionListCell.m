//
//  FinishedMissionListCell.m
//  Advertisment
//
//  Created by bb on 13-4-3.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import "FinishedMissionListCell.h"

@implementation FinishedMissionListCell

@synthesize iconImage = _iconImage;
@synthesize title = _title;
@synthesize subTitle = _subTitle;
@synthesize describe = _describe;

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

-(void) setDescribeText:(NSString*) text
{
    if (text) {
        self.describe.text = text;
    }
}

- (void) setIconImageFile:(UIImage *) iconImageName
{
    self.iconImage.image = iconImageName;
}


@end
