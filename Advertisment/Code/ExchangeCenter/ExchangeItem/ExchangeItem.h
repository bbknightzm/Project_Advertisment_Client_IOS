//
//  ExchangeItem.h
//  Advertisment
//
//  Created by bb on 1/27/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExchangeItem : UIViewController

@property (nonatomic, strong) IBOutlet UIButton *btnConfirm;
@property (nonatomic, strong) IBOutlet UIImageView *iconView;
@property (nonatomic, strong) IBOutlet UIImageView *detailBG;
@property (nonatomic, strong) IBOutlet UILabel *detailText;
@property (nonatomic, strong) IBOutlet UILabel *consumedCnt;
@property (nonatomic, strong) IBOutlet UILabel *exchangeQuantity;
@property (nonatomic, strong) IBOutlet UILabel *restQuantity;

@end
