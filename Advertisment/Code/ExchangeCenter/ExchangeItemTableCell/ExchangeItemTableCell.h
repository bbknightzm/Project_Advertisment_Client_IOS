//
//  ExchangeItemTableCell.h
//  Advertisment
//
//  Created by bb on 1/25/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExchangeItemTableCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *title;

@property (nonatomic, strong) IBOutlet UILabel *subTitle;

@property (nonatomic, strong) IBOutlet UIImageView *iconImage;

@property (nonatomic, strong) IBOutlet UIImageView *bandImage;

@property (nonatomic, strong) UIImageView *bgView;

- (void) setTitleText : (NSString *) titleText;
- (void) setSubTitleText : (NSString *) subtitleText;
- (void) setIconImageFile : (UIImage *) iconImageName;
- (void) setBandImageFile : (UIImage *) bandImageName;
- (void) setTableCellBG : (NSString *) bgName;
@end
