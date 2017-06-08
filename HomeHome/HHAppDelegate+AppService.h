//
//  HHAppDelegate+AppService.h
//  HomeHome
//
//  Created by 福利郑 on 16/12/18.
//  Copyright © 2016年 福利郑. All rights reserved.
//



@interface HHAppDelegate (AppService)

/**
 *  检查黑名单用户
 */
-(void)checkBlack;


/**
 *  检查更新
 */
- (void)checkAppUpDataWithshowOption:(BOOL)showOption;

/**
 *  上传用户设备信息
 */
- (void)upLoadMessageAboutUser;

@end
