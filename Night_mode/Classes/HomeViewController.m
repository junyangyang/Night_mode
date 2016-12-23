//
//  HomeViewController.m
//  Night_mode
//
//  Created by 俊洋洋 on 16/12/23.
//  Copyright © 2016年 俊洋洋. All rights reserved.
//

#import "HomeViewController.h"
#import "FirstViewController.h"

@interface HomeViewController ()

@property (nonatomic, strong)UIButton *change;
@property (nonatomic, strong)UIButton *next;

@property (nonatomic, strong)UILabel *label;

@end

@implementation HomeViewController

- (void)viewDidLoad {
        [self setupUI];

    [super viewDidLoad];
    self.title = @"home";
}
- (void)setupUI
{
    _change = [UIButton buttonWithType:UIButtonTypeCustom];
    _change.frame = CGRectMake(0, 50,SCREENWIDTH , 20);
    _change.titleLabel.font = [UIFont systemFontOfSize:13];
    [_change setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

    [_change setTitle:@"切换状态" forState:UIControlStateNormal];
    [_change addTarget:self action:@selector(changeBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_change];
    
    _label = [[UILabel alloc]init];
    _label.frame = CGRectMake(10, 40 , SCREENWIDTH-20, 300);
    _label.numberOfLines = 0;
    _label.font = [UIFont systemFontOfSize:13];
    _label.text = @"systemgroup.com.apple.configurationprofiles path is /Users/junyangyang/Library/Developer/CoreSimulator/Devices/8BBFFFA0-43DD-45C6-A4BA-FC47DBA709C0/data/Containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles";
    [self.view addSubview:_label];
    
    
    _next = [UIButton buttonWithType:UIButtonTypeCustom];
    _next.frame = CGRectMake(0, SCREENHEIGHT-100,SCREENWIDTH , 20);
    _next.titleLabel.font = [UIFont systemFontOfSize:13];
    [_next setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [_next setTitle:@"next" forState:UIControlStateNormal];
    [_next addTarget:self action:@selector(nextBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_next];

}
- (void)changeBtn
{
    [LYManager shareInstance].isNight = ![LYManager shareInstance].isNight;
}
- (void)nextBtn
{
    FirstViewController *vc = [[FirstViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)day_mode
{
    NSLog(@"dat_mode1");

    [super day_mode];
    //某类(2个以上)设置 写到NightManager中
    [StateManager setButtonTitleColorWithButton:_change];
    [StateManager setLabelColorWithLabel:_label];
    [StateManager setButtonTitleColorWithButton:_next];

}
- (void)night_mode
{
//    [self setupUI];
    [super night_mode];
    NSLog(@"night_mode1");
    [StateManager setButtonTitleColorWithButton:_change];
    [StateManager setLabelColorWithLabel:_label];
    [StateManager setButtonTitleColorWithButton:_next];

}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
