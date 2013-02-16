//
//  ExchangeItemListCell.h
//  Advertisment
//
//  Created by bb on 2/15/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExchangeItemListCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UIButton* leftBtn;

@property (nonatomic, strong) IBOutlet UIButton* rightBtn;

@property (nonatomic, strong) UIImageView* bgView;

//@property (nonatomic, strong) UIImageView *bgSelectedView;

- (void) setLeftBtnBG : (NSString*) bgName;

- (void) setRightBtnBG : (NSString*) bgName;

- (void) setTableCellBG : (NSString *) bgName;

- (void) setItemCallBack : (id) backid;

//- (void) setTableCellSelectedBG : (NSString *) bgName;

@end
