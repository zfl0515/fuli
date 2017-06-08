//
//  AboutMeViewController.m
//  HomeHome
//
//  Created by 福利郑 on 16/12/18.
//  Copyright © 2016年 福利郑. All rights reserved.
//

#import "AboutMeViewController.h"
#import "UserCell.h"
#import "masonry.h"


@interface AboutMeViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    UIImageView *_headerImg;
    UILabel *_nameLabel;
    NSMutableArray *_dataArray;
    
}
@property(nonatomic,strong)UIImageView *backgroundImgV;
@property(nonatomic,assign)float backImgHeight;
@property(nonatomic,assign)float backImgWidth;
@property(nonatomic,strong)UIImageView *headImageView;
@property(nonatomic,strong)UITableView *tableView;

@end

@implementation AboutMeViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib
    
    [self backImageView];
    
    [self loadData];
    
    [self layoutTableView];
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.alpha = 0;
}
-(void)viewWillDisappear:(BOOL)animated{
     self.navigationController.navigationBar.alpha = 1;
    [super viewWillDisappear:animated];
}

-(void)loadData{
    
    _dataArray =[[NSMutableArray alloc]init];
    
    for (int i = 0; i < 20; i++) {
        
        NSString * string=[NSString stringWithFormat:@"第%d行",i];
        
        [_dataArray addObject:string];
        
    }
    
}

-(void)backImageView{
    UIImage *image=[UIImage imageNamed:@"back"];
    
    _backgroundImgV=[[UIImageView alloc]initWithFrame:CGRectMake(0, -64, kScreenW, image.size.height*0.8)];
    NSLog(@"%f",image.size.height*0.8);
    _backgroundImgV.image=image;
    _backgroundImgV.userInteractionEnabled=YES;
    [self.view addSubview:_backgroundImgV];
    _backImgHeight=_backgroundImgV.frame.size.height;
    _backImgWidth=_backgroundImgV.frame.size.width;
}

-(void)layoutTableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc]init];
        _tableView.backgroundColor=[UIColor clearColor];
        _tableView.showsVerticalScrollIndicator=NO;
        _tableView.dataSource=self;
        _tableView.delegate=self;
        _tableView.tableFooterView = [[UIView alloc] init];
        [_tableView registerNib:[UINib nibWithNibName:UserCellIdetifeir bundle:nil] forCellReuseIdentifier:UserCellIdetifeir];
        [self.view addSubview:_tableView];
        [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.and.bottom.mas_equalTo(0);
            make.width.mas_equalTo(kScreenW);
            make.height.mas_equalTo(kScreenH-64-44);
        }];
    }
    [_tableView setTableHeaderView:[self headImageView]];
}



-(UIImageView *)headImageView{
    if (!_headImageView) {
        _headImageView=[[UIImageView alloc]init];
        _headImageView.frame=CGRectMake(0, 64, kScreenW, 170);
        _headImageView.backgroundColor=[UIColor clearColor];
        _headImageView.userInteractionEnabled = YES;
        
        _headerImg=[[UIImageView alloc]init];
        _headerImg.center=CGPointMake(kScreenW/2, 70);
        [_headerImg setImage:[UIImage imageNamed:@"header"]];
        [_headerImg.layer setMasksToBounds:YES];
        [_headerImg.layer setCornerRadius:35];
        _headerImg.backgroundColor=[UIColor whiteColor];
        _headerImg.userInteractionEnabled=YES;
        UITapGestureRecognizer *header_tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(header_tap_Click:)];
        [_headerImg addGestureRecognizer:header_tap];
       
        
        _nameLabel=[[UILabel alloc]init];
        _nameLabel.text = @"Rainy";
        _nameLabel.userInteractionEnabled = YES;
        UITapGestureRecognizer *nick_tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(nick_tap_Click:)];
        [_nameLabel addGestureRecognizer:nick_tap];
        _nameLabel.textColor=[UIColor whiteColor];
        _nameLabel.textAlignment=NSTextAlignmentCenter;
        
         [_headImageView addSubview:_headerImg];
         [_headImageView addSubview:_nameLabel];
        
        [_headerImg mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.mas_equalTo(50);
            make.width.mas_equalTo(70);
            make.height.mas_equalTo(70);
            make.centerX.mas_equalTo(_headImageView.mas_centerX);
            
        }];
        
        [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.mas_equalTo(_headerImg.mas_bottom).offset(10);
            make.width.mas_equalTo(105);
            make.height.mas_equalTo(20);
            make.centerX.mas_equalTo(_headImageView.mas_centerX);

        }];
       
    }
    return _headImageView;
}

//左按钮
-(void)NaLeft
{
    NSLog(@"左按钮");
}
//右按钮
-(void)NaRight
{
    NSLog(@"右按钮");
}//头像
-(void)header_tap_Click:(UITapGestureRecognizer *)tap
{
    NSLog(@"头像");
}
//昵称
-(void)nick_tap_Click:(UIButton *)item
{
    NSLog(@"昵称");
}




#pragma mark ---- UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return _dataArray.count;
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
    UserCell *cell = [tableView dequeueReusableCellWithIdentifier:UserCellIdetifeir forIndexPath:indexPath];
    
    cell.lab_text = [_dataArray objectAtIndex:indexPath.row];
    
    cell.img_name = @"cell";
    
    
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    int contentOffsety = scrollView.contentOffset.y;
    NSLog(@"contentOffsety:%d",contentOffsety);
    if (scrollView.contentOffset.y<=170) {
        
       
       self.navigationController.navigationBar.alpha = scrollView.contentOffset.y/170;
        NSLog(@"self.navigationController.navigationBar.alpha:%f",self.navigationController.navigationBar.alpha);
        [[UIApplication sharedApplication]setStatusBarStyle:UIStatusBarStyleDefault animated:YES];
    }else {

        self.navigationController.navigationBar.alpha = 1;
        [[UIApplication sharedApplication]setStatusBarStyle:UIStatusBarStyleDefault animated:YES];

    }

    NSLog(@"contentOffsety:%d",contentOffsety);
    if (contentOffsety<0) {
        
        CGRect rect = _backgroundImgV.frame;
        rect.size.height = _backImgHeight-contentOffsety;
        rect.size.width = _backImgWidth* (_backImgHeight-contentOffsety)/_backImgHeight;
        rect.origin.x =  -(rect.size.width-_backImgWidth)/2;
        rect.origin.y = -64;
        _backgroundImgV.frame = rect;
        
    }else{
        CGRect rect = _backgroundImgV.frame;
        rect.size.height = _backImgHeight;
        rect.size.width = _backImgWidth;
        rect.origin.x = 0;
        rect.origin.y = -contentOffsety-64;
        _backgroundImgV.frame = rect;
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

