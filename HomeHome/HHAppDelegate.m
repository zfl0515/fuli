//
//  HHAppDelegate.m
//  HomeHome
//
//  Created by 福利郑 on 16/12/18.
//  Copyright © 2016年 福利郑. All rights reserved.
//


#import "HHAppDelegate.h"
#import "HHAppDelegate+AppLifeCircle.h"
#import "HHAppDelegate+AppService.h"
#import "HHAppDelegate+RootController.h"

@interface HHAppDelegate ()

@end

@implementation HHAppDelegate


+ (UINavigationController *)rootNavigationController
{
    HHAppDelegate *app = (HHAppDelegate *)[UIApplication sharedApplication].delegate;
    return (UINavigationController *)app.window.rootViewController;
    
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
      [self setAppWindows];
    
      [self setTabbarController];
      [self setRootViewController];
    
//    
//    [self configurationLaunchUserOption];
//    
//    [self registerBugly];
//    
//    [self registerMob];
//    
//    [self registerUmeng];
//    
//    [VTJpushTools setupWithOptions:launchOptions];
//    
      [self upLoadMessageAboutUser];
    
      [self checkAppUpDataWithshowOption:NO];
    
//    [SZNotificationCenter addObserver:self selector:@selector(phontoBroserPush:) name:kPushPhotoBrowserNotifitationName object:nil];
//    [SZNotificationCenter addObserver:self selector:@selector(playCallBackVideo:) name:kPresentVideoPlayerNotifitationName object:nil];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
