//
//  ExchangeItemList.h
//  Advertisment
//
//  Created by bb on 2/15/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExchangeItemList : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tbView;

@end
