//
//  ConfigCenterString.h
//  Advertisment
//
//  Created by bb on 13-4-1.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#ifndef Advertisment_ConfigCenterString_h
#define Advertisment_ConfigCenterString_h

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#pragma mark --- config center view
static NSString *ccSuggestion = @"反馈建议";
static NSString *ccBlindAccount = @"帐号绑定";
static NSString *ccQuestion = @"常见问题";
static NSString *ccCheckUpdate = @"检查更新";
static NSString *ccConnectUs = @"联系我们";

enum CONFIG_CENTER_ENUM : int
{
    CCE_SUGGESTION = 0,
    CCE_BIND_ACCOUNT,
    CCE_QUESTION,
    CCE_CHECK_UPDATE,
    CCE_CONNECT_US,
    CCE_MAX,
};
    
static NSString *ccNib = @"ConfigCenterListCell";
static NSString *ccIdentifier = @"ConfigCenterListCellIdentifier";


#pragma mark --- connect us view
    enum CONFIG_CENTER_CONNECT_US_ENUM : int
    {
        CCCUE_QQ = 0,
        CCCUE_WEIXIN,
        CCCUE_WEIBO,
        CCCUE_EMAIL,
        CCCUE_MAX,
    };
    static NSString *cccuQQ = @"QQ";
    static NSString *cccuWeiXin = @"微信";
    static NSString *cccuWeiBo = @"微博";
    static NSString *cccuEMail = @"邮箱";
    
    static NSString *defaultQQ = @"123456789";
    static NSString *defaultWeiXin = @"Tom1990";
    static NSString *defaultWeiBo = @"Tom1990";
    static NSString *defaultEMail = @"Tom1990@gmail.com";
    
    static NSString *cccuNib = @"ConnectUsListCell";
    static NSString *cccuIdentifier = @"ConnectUsListCellIdentifier";

        
#pragma mark --- question view
    static NSString *ccqNib = @"QuestionListCell";
    static NSString *ccqIdentifier = @"QuestionListCellIdentifier";
#endif
