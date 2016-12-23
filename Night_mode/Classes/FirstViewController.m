//
//  FirstViewController.m
//  Night_mode
//
//  Created by 俊洋洋 on 16/12/23.
//  Copyright © 2016年 俊洋洋. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (nonatomic, strong)UILabel *label;
@property (nonatomic, strong)UIButton *change;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [self setupUI];

    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"FirstViewController";
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
    _label.text = @"地时间2016年12月22日，俄罗斯莫斯科，俄罗斯遇刺大使卡尔洛夫葬礼举行，俄罗斯总统普京出席外交部为遇刺大使卡尔洛夫举办的遗体告别仪式。";
    [self.view addSubview:_label];

}
- (void)changeBtn
{
    [LYManager shareInstance].isNight = ![LYManager shareInstance].isNight;
}
- (void)day_mode
{
    [super day_mode];
    [StateManager setLabelColorWithLabel:_label];
    [StateManager setButtonTitleColorWithButton:_change];

}
- (void)night_mode
{
    [super night_mode];
    [StateManager setLabelColorWithLabel:_label];
    [StateManager setButtonTitleColorWithButton:_change];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
