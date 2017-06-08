//
//  HHAppDelegate+RootViewController.h
//  HomeHome
//
//  Created by 福利郑 on 16/12/18.
//  Copyright © 2016年 福利郑. All rights reserved.
//

#import "HHAppDelegate.h"

@interface HHAppDelegate (RootController)

/**
 *  首次启动轮播图
 */
- (void)createLoadingScrollView;
///**
// *  tabbar实例
// */
- (void)setTabbarController;

/**
 *  window实例
 */
- (void)setAppWindows;

/**
 *  根视图
 */
- (void)setRootViewController;


@end
