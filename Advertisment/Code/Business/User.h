//
//  User.h
//  Advertisment
//
//  Created by bb on 13-3-16.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jastor.h"

@interface User : Jastor

@property (nonatomic, copy) NSNumber *userID;
@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *weiboAccount;
@property (nonatomic, copy) NSString *mobile;
@property (nonatomic, copy) NSString *eMail;
@property (nonatomic, copy) NSString *qq;
@property (nonatomic, copy) NSNumber *sex;
@property (nonatomic, copy) NSString *address;
@property (nonatomic, copy) NSString *deviceMac;
@property (nonatomic, copy) NSString *deviceToken;
@property (nonatomic, copy) NSNumber *money;
@property (nonatomic, copy) NSString *regeditDate;
@property (nonatomic, copy) NSString *lastLoginDate;

@end

/*
@interface User : NSObject
{
    int userId;
    char userName[256];
    char weiboAccount[256];
    char mobile[256];
    char eMail[256];
    char qq[256];
    bool sex;
    char address[256];
    char deviceMac[256];
    char deviceToken[256];
    int money;
    char regeditDate[256];
    char lastLoginDate[256];
}

@property (nonatomic) int userId;
@property (nonatomic) char *userName;
@property (nonatomic) char *weiboAccount;
@property (nonatomic) char *mobile;
@property (nonatomic) char *eMail;
@property (nonatomic) char *qq;
@property (nonatomic) bool sex;
@property (nonatomic) char *address;
@property (nonatomic) char *deviceMac;
@property (nonatomic) char *deviceToken;
@property (nonatomic) int money;
@property (nonatomic) char *regeditDate;
@property (nonatomic) char *lastLoginDate;
@end
 */
