//
//  UIAlertView+Block.h
//  HomeHome
//
//  Created by 福利郑 on 2017/5/31.
//  Copyright © 2017年 福利郑. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void (^successBlock)(NSInteger buttonIndex);
@interface UIAlertView (Block)<UIAlertViewDelegate>

- (void)showWithBlock:(successBlock)block;


@end
