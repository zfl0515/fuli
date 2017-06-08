//
//  UIAlertView+Block.m
//  HomeHome
//
//  Created by 福利郑 on 2017/5/31.
//  Copyright © 2017年 福利郑. All rights reserved.
//

#import "UIAlertView+Block.h"
#import <objc/runtime.h>


static const char alertKey;

@implementation UIAlertView (Block)

- (void)showWithBlock:(successBlock)block
{
    
    if (block)
    {
        objc_setAssociatedObject(self, &alertKey, block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        self.delegate = self;
    }
    
    [self show];
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    if(buttonIndex == 1){
        successBlock block = objc_getAssociatedObject(self, &alertKey);
        block(buttonIndex);
    }else{
        NSLog(@"%@",@"取消了");
    }
}

@end
