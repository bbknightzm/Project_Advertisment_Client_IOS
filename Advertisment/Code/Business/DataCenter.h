//
//  DateCenter.h
//  Advertisment
//
//  Created by bb on 13-3-23.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Item.h"
#import "Activity.h"
#import "ASIHTTPRequest.h"

@interface DataCenter : NSObject<ASIHTTPRequestDelegate>

@property (nonatomic, strong) User *user;
@property (nonatomic, strong) NSMutableArray *itemList;
@property (nonatomic, strong) NSMutableArray *activityList;

// Asynchronous load information from server
-(void) loadUserInfoAsyn:(NSString*)token;
-(void) loadItemAsyn;
-(void) loadActivityAsyn;

// Synchronous loda information form server
-(void) loadUserInfoSyn:(NSString*)token;
-(void) loadItemSyn;
-(void) loadActivitySyn;
@end
