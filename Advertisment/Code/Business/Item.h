//
//  Item.h
//  Advertisment
//
//  Created by bb on 13-3-17.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jastor.h"

@interface Item : Jastor

@property (nonatomic, copy) NSNumber *itemID;
@property (nonatomic, copy) NSNumber *itemCategory;
@property (nonatomic, copy) NSNumber *itemType;
@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *itemDescribe;
@property (nonatomic, copy) NSNumber *consumeMoney;
@property (nonatomic, copy) NSNumber *totalCount;
@property (nonatomic, copy) NSNumber *restCount;
@property (nonatomic, copy) NSString *startDate;
@property (nonatomic, copy) NSString *endDate;


@end
