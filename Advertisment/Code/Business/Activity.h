//
//  Activity.h
//  Advertisment
//
//  Created by bb on 13-3-17.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jastor.h"

@interface Activity : Jastor

@property (nonatomic, copy) NSNumber *activityID;
@property (nonatomic, copy) NSNumber *activityCategory;
@property (nonatomic, copy) NSNumber *activityType;
@property (nonatomic, copy) NSString *activityName;
@property (nonatomic, copy) NSString *activityDescribe;
@property (nonatomic, copy) NSNumber *activityState;
@property (nonatomic, copy) NSNumber *generateMoney;
@property (nonatomic, copy) NSNumber *totalCount;
@property (nonatomic, copy) NSNumber *restCount;
@property (nonatomic, copy) NSString *startDate;
@property (nonatomic, copy) NSString *endDate;

@end
