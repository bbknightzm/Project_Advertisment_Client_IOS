//
//  MessageCenterListCell.h
//  Advertisment
//
//  Created by bb on 13-4-4.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessageCenterListCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *title;

@property (nonatomic, strong) IBOutlet UILabel *subTitle;

@property (nonatomic, strong) IBOutlet UIImageView *detailPic;

@property (nonatomic, strong) IBOutlet UIImageView *bandImage;

-(void) setTitleText:(NSString*) text;
-(void) setSubTitleText:(NSString*) text;
-(void) setDetailPicBG:(UIImage*) detailImageName;
-(void) setNewImageBG:(UIImage*) iconImageName;

@end
