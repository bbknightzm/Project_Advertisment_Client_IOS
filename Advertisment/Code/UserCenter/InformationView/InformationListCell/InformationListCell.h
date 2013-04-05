//
//  InformationListCell.h
//  Advertisment
//
//  Created by bb on 13-4-3.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InformationListCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *title;

@property (nonatomic, strong) IBOutlet UILabel *subTitle;

@property (nonatomic, strong) IBOutlet UIButton *bindBtn;

-(void) setTitleText:(NSString*) text;
-(void) setSubTitleText:(NSString*) text;
-(void) setBindAction:(SEL)act to:(id)target;

@end
