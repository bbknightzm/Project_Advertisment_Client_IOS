//
//  UserCenterListCell.h
//  Advertisment
//
//  Created by bb on 13-4-1.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserCenterListCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UIImageView *image;

@property (nonatomic, strong) IBOutlet UILabel *title;

@property (nonatomic, strong) IBOutlet UILabel *subTitle;

@property (nonatomic, strong) IBOutlet UIImageView *detailPic;

-(void) setTitleText:(NSString*) text;
-(void) setSubTitleText:(NSString*) text;
-(void) setDetailPicShow:(BOOL) isShow;
-(void) setDetailPicBG:(UIImage*) detailImageName;
-(void) setIcon:(UIImage*) iconImageName;

@end
