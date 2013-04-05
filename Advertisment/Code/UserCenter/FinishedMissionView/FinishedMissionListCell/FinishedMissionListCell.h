//
//  FinishedMissionListCell.h
//  Advertisment
//
//  Created by bb on 13-4-3.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FinishedMissionListCell : UITableViewCell


@property (nonatomic, strong) IBOutlet UIImageView* iconImage;
@property (nonatomic, strong) IBOutlet UILabel *title;

@property (nonatomic, strong) IBOutlet UILabel *subTitle;

@property (nonatomic, strong) IBOutlet UILabel *describe;

-(void) setIconImageFile : (UIImage *) iconImageName;
-(void) setTitleText:(NSString*) text;
-(void) setSubTitleText:(NSString*) text;
-(void) setDescribeText:(NSString*) text;

@end
