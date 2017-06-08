//
//  HHAppDelegate.h
//  HomeHome
//
//  Created by 福利郑 on 16/12/18.
//  Copyright © 2016年 福利郑. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HHAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong,nonatomic)UIViewController * viewController;
+ (UINavigationController *)rootNavigationController;

@end

