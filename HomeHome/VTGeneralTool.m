//
//  VTGeneralTool.m
//  HomeHome
//
//  Created by 福利郑 on 2017/5/31.
//  Copyright © 2017年 福利郑. All rights reserved.
//

#import "VTGeneralTool.h"

@implementation VTGeneralTool

+(UIImage*)createImageWithColor:(UIColor*)color
{
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

@end
