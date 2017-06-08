//
//  HomePageViewController.m
//  HomeHome
//
//  Created by 福利郑 on 16/12/18.
//  Copyright © 2016年 福利郑. All rights reserved.
//

#import "HomePageViewController.h"
#import "ADCarouselView.h"
#import "UIImageView+WebCache.h"

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

@interface HomePageViewController ()<ADCarouselViewDelegate>

@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ADCarouselView *carouselView = [ADCarouselView carouselViewWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 120)];
    carouselView.loop = YES;
    carouselView.delegate = self;
    carouselView.automaticallyScrollDuration = 1;
    carouselView.imgs = @[@"ad1",@"http://d.hiphotos.baidu.com/zhidao/pic/item/3b87e950352ac65c1b6a0042f9f2b21193138a97.jpg",@"ad3",@"ad4",@"ad5"];
    carouselView.placeholderImage = [UIImage imageNamed:@"zhanweifu"];
    carouselView.titles = @[@"我",@"是",@"轮",@"播",@"图"];
    [self.view addSubview:carouselView];
    
    
//    WS(ws);
//    
//    UIView *sv = [UIView new];
//    [sv showPlaceHolder];
//    sv.backgroundColor = [UIColor blackColor];
//    [self.view addSubview:sv];
//    [sv mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.equalTo(ws.view);
//        make.size.mas_equalTo(CGSizeMake(300, 300));
//    }];
//    

}

- (void)carouselView:(ADCarouselView *)carouselView didSelectItemAtIndex:(NSInteger)didSelectItemAtIndex
{
    NSLog(@"%zd",didSelectItemAtIndex);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
