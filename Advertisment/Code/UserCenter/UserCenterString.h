//
//  UserCenterString.h
//  Advertisment
//
//  Created by bb on 13-4-1.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#ifndef Advertisment_UserCenterString_h
#define Advertisment_UserCenterString_h

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

//@interface UserCenterString

static NSString *ucNowScore = @"现有积分";
static NSString *ucFinishedMission = @"完成任务";
static NSString *ucTotalScore = @"赚得积分";
static NSString *ucChangedItem = @"已换礼品";
static NSString *ucUsedScore = @"已用积分";
static NSString *ucInformation = @"个人信息";
static NSString *ucTopHot = @"热门排行";

enum USER_CENTER_ENUM : int
{
    UCE_NOW_SCORE = 0,
    UCE_FINISHED_MISSION,
    UCE_TOTAL_SCORE,
    UCE_CHANGED_ITEM,
    UCE_USED_SCORE,
    UCE_INFORMATION,
    UCE_TOP_HOT,
    UCE_MAX,
};

static NSString *ucNib = @"UserCenterListCell";
static NSString *ucIdentifier = @"UserCenterListCellIdentifier";
    
    
    
    // Finished Mission
    static NSString *ucfmNib = @"FinishedMissionListCell";
    static NSString *ucfmIdentifier = @"FinishedMissionListCellIdentifier";
    
    // Changed Item
    static NSString *ucciNib = @"ChangedItemListCell";
    static NSString *ucciIdentifier = @"ChangedItemListCellIdentifier";
    
    //Information
    static NSString *uciName = @"用户名";
    static NSString *uciBirthday = @"生日";
    static NSString *uciWeibo = @"微博";
    static NSString *uciCellphone = @"手机";
    static NSString *uciEmail = @"邮箱";
    static NSString *uciQQ = @"QQ";
    static NSString *uciGender = @"性别";
    static NSString *uciAddress = @"地址";
    enum USER_CENTER_INFORMATION_ENUM : int
    {
        UCIE_NAME = 0,
        UCIE_BIRTHDAY,
        UCIE_WEIBO,
        UCIE_CELLPHONE,
        UCIE_EMAIL,
        UCIE_QQ,
        UCIE_GENDER,
        UCIE_ADDRESS,
        UCIE_MAX,
    };
    static NSString *uciNib = @"InformationListCell";
    static NSString *uciIdentifier = @"InformationListCellIdentifier";
#endif
