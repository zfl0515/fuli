//
//  SZCourseListViewController.m
//  HomeHome
//
//  Created by 福利郑 on 16/12/18.
//  Copyright © 2016年 福利郑. All rights reserved.
//

#import "SZCourseListViewController.h"
#import "Masonry.h"

@implementation SZCourseListViewController
{
    UITextField *_textField;
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"测试" message:@"说过了测试" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    //
    //    [alertView  showWithBlock:^(NSInteger buttonIndex) {
    //        NSLog(@"%s","-------");
    //        NSLog(@"%ld buttonIndex:",(long)buttonIndex);
    //    }];
    //注册事件

    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyBoardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyBoardWillDisappear:) name:UIKeyboardWillHideNotification object:nil];
}

-(void)viewDidLoad{
    [super viewDidLoad];
    // [self exp4];
    
    
    // 防止block循环引用
    __weak typeof (self)weakSelf = self;
    
    _textField  = [[UITextField alloc]init];
    [self.view  addSubview:_textField];
    [_textField setBackgroundColor:[UIColor yellowColor]];
    
    [_textField mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.size.mas_equalTo(CGSizeMake(200, 30));
        make.bottom.mas_equalTo(-100);
        make.centerX.equalTo(weakSelf.view.mas_centerX);
    }];
}

-(void)viewDidDisappear:(BOOL)animated{
    [super  viewDidDisappear:animated];
    
    [[NSNotificationCenter defaultCenter]removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter  defaultCenter]removeObserver:self name:UIKeyboardWillHideNotification object:nil];
    
}

-(void)keyBoardWillShow:(NSNotification*)noti {
    // 获取键盘基本信息（动画时长与键盘高度）
    NSDictionary *userInfo = [noti userInfo];
    CGRect rect =
    [userInfo[UIKeyboardFrameBeginUserInfoKey] CGRectValue];
    
    CGFloat keyboardHeight = CGRectGetHeight(rect);
    CGFloat keyboardDuration =
    [userInfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    
    // 修改下边距约束
    [_textField mas_updateConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(-keyboardHeight);
    }];
    
    // 更新约束
    
    [UIView animateWithDuration:keyboardDuration animations:^{
        [self.view layoutIfNeeded];
    }];
    
}
-(void)keyBoardWillDisappear:(NSNotification *)noti {
    // 获取键盘基本信息（动画时长与键盘高度）
    NSDictionary *userInfo = [noti userInfo];
    CGRect rect =
    [userInfo[UIKeyboardFrameBeginUserInfoKey] CGRectValue];
    
    //    CGFloat keyboardHeight = CGRectGetHeight(rect);
    CGFloat keyboardDuration =[userInfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    
    [_textField mas_updateConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(-44);
    }];
    [UIView animateWithDuration:keyboardDuration animations:^{
        [self.view layoutIfNeeded];
    }];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    //返回一个BOOL值，指明是否允许在按下回车键时结束编辑
    //如果允许要调用resignFirstResponder 方法，这回导致结束编辑，而键盘会被收起[textField resignFirstResponder];
    //查一下resign这个单词的意思就明白这个方法了
    
    return YES;
}


@end
