//
//  Config.h
//  HomeHome
//
//  Created by 福利郑 on 16/12/18.
//  Copyright © 2016年 福利郑. All rights reserved.
//

#ifndef HHConfig_h
#define HHConfig_h


#define kPushPhotoBrowserNotifitationName @"PushPhotoBrowser"
#define kPresentVideoPlayerNotifitationName @"playCallBackVideo"

#define kScreenW [UIScreen mainScreen].bounds.size.width
#define kScreenH [UIScreen mainScreen].bounds.size.height

#define APPICONIMAGE [UIImage imageNamed:[[[[NSBundle mainBundle] infoDictionary] valueForKeyPath:@"CFBundleIcons.CFBundlePrimaryIcon.CFBundleIconFiles"] lastObject]]
#define APPNAME [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"]


#define kColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]
#define UserCellIdetifeir @"UserCell"
#define VTColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define Main_Color [UIColor colorWithRed:(3)/255.0 green:(160)/255.0 blue:(235)/255.0 alpha:1.0]
#define SZUserDefault [NSUserDefaults standardUserDefaults]

#endif /* HHConfig_h */


//
//该声明文件用于编写某些全局配置参数
//如以下：
//
//#define kPushPhotoBrowserNotifitationName @"PushPhotoBrowser"
//#define kPresentVideoPlayerNotifitationName @"playCallBackVideo"
//
//#define APPICONIMAGE [UIImage imageNamed:[[[[NSBundle mainBundle] infoDictionary] valueForKeyPath:@"CFBundleIcons.CFBundlePrimaryIcon.CFBundleIconFiles"] lastObject]]
//#define APPNAME [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"]
//#define Main_Color [UIColor colorWithRed:(3)/255.0 green:(160)/255.0 blue:(235)/255.0 alpha:1.0]
//#define Main2_Color [UIColor colorWithRed:(135)/255.0 green:(202)/255.0 blue:(231)/255.0 alpha:1.0]
//#define VTColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
//#define Text_Color [UIColor colorWithRed:(51)/255.0 green:(71)/255.0 blue:(113)/255.0 alpha:1.0]
//#define BackGround_Color [UIColor colorWithRed:(235)/255.0 green:(235)/255.0 blue:(241)/255.0 alpha:1.0]
//
//#define Default_Person_Image [UIImage imageNamed:@"default_parents"]
//#define Default_General_Image [UIImage imageNamed:@"default_general"]
//
//#define kScreenW [UIScreen mainScreen].bounds.size.width
//#define kScreenH [UIScreen mainScreen].bounds.size.height
////以及各种第三方服务商的appId或者App key
