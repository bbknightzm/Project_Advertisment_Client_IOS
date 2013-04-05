//
//  QuestionListCell.m
//  Advertisment
//
//  Created by bb on 13-4-1.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import "QuestionListCell.h"

@implementation QuestionListCell

@synthesize title = _title;
@synthesize subTitle = _subTitle;

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

@end
