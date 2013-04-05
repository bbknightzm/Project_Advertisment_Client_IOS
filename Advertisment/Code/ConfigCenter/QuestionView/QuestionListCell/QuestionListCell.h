//
//  QuestionListCell.h
//  Advertisment
//
//  Created by bb on 13-4-1.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuestionListCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *title;

@property (nonatomic, strong) IBOutlet UILabel *subTitle;

-(void) setTitleText:(NSString*) text;
-(void) setSubTitleText:(NSString*) text;

@end
