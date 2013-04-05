//
//  MessageDetailViewController.h
//  Advertisment
//
//  Created by bb on 13-4-4.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessageDetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *leftLeaf;

@property (strong, nonatomic) IBOutlet UIImageView *rightLeaf;

@property (nonatomic, strong) IBOutlet UILabel *mainTitle;

@property (nonatomic, strong) IBOutlet UILabel *detailContent;

@property (nonatomic, strong) IBOutlet UIButton *deleteBtn;

-(void) setMainTitleText:(NSString*)text;
-(void) setDetailContentText:(NSString*)text;

@end
