//
//  CommuntiyViewController.m
//  HomeHome
//
//  Created by 福利郑 on 16/12/18.
//  Copyright © 2016年 福利郑. All rights reserved.
//

#import "CommuntiyViewController.h"
#import "Masonry.h"
@interface CommuntiyViewController(){
    
}



@end
@implementation CommuntiyViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView1 = [[UIImageView alloc]init];
    MASConstraint *width = [self setView:imageView1 size:imageViewSize left:_containerView.mas_left centerY:_containerView.mas_centerY];
    [_widthConstraints addObject:width];
    
    UIImageView *imageView2 = [[UIImageView alloc]init];
    width = [self setView:imageView2 size:imageViewSize left:imageView1.mas_right centerY:_containerView.mas_centerY];
    [_widthConstraints addObject:width];
    
    UIImageView *imageView3 = [[UIImageView alloc]init];
    width = [self setView:imageView3 size:imageViewSize left:imageView2.mas_right centerY:_containerView.mas_centerY];
    [_widthConstraints addObject:width];
    
    UIImageView *imageView4 = [[UIImageView alloc]init];
    width = [self setView:imageView4 size:imageViewSize left:imageView3.mas_right centerY:_containerView.mas_centerY];
    [_widthConstraints addObject:width];
    
    //最后设置最右边的imageView的右边与父view的最有对齐
    [imageView4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(_containerView.mas_right);
    }];
    //containerView 就是 容器View
    
    [_containerView mas_makeConstraints:^(MASConstraintMaker *make) {
        //只设置高度，宽度由子View决定
        make.height.equalTo(@(IMAGE_SIZE));
        //水平居中
        make.centerX.equalTo(self.view.mas_centerX);
        //距离父View顶部200点
        make.top.equalTo(self.view.mas_top).offset(200);
    }];
}


- (void)showOrHideImage:(UISwitch *)sender {
    NSUInteger index = (NSUInteger) sender.tag;
    MASConstraint *width = _widthConstraints[index];
    
    if (sender.on) {
        width.equalTo(@(IMAGE_SIZE));
    } else {
        width.equalTo(@0);
    }
}

/**
 *  设置view的宽高、左边约束，垂直中心约束
 *
 *  @param view    要设置的view
 *  @param size    CGSize
 *  @param left    左边对齐的约束
 *  @param centerY 垂直中心对齐的约束
 *
 *  @return 返回宽约束，用于显示、隐藏单个view
 */
- (MASConstraint *)setView:(UIView *)view size:(CGSize)size left:(MASViewAttribute *)left centerY:(MASViewAttribute *)centerY {
    
    __block MASConstraint *widthConstraint;
    
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        
        //宽高固定
        widthConstraint = make.width.equalTo(@(size.width));
        make.height.equalTo(@(size.height));
        //左边约束
        make.left.equalTo(left);
        //垂直中心对齐
        make.centerY.equalTo(centerY);
    }];
    
    return widthConstraint;
}
@end
