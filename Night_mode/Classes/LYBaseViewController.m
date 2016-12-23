//
//  LYBaseViewController.m
//  Night_mode
//
//  Created by 俊洋洋 on 16/12/23.
//  Copyright © 2016年 俊洋洋. All rights reserved.
//

#import "LYBaseViewController.h"

@interface LYBaseViewController ()

@end

@implementation LYBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)]) {
        [self setEdgesForExtendedLayout:UIRectEdgeNone];
    }
    
    if ( [LYManager shareInstance].isNight) {
        [self night_mode];
    }else{
        [self day_mode];
    }
    
    [NOTIFICATION addObserver:self selector:@selector(day_mode) name:Day_mode object:nil];
    [NOTIFICATION addObserver:self selector:@selector(night_mode) name:Night_mode object:nil];
}
- (void)dealloc {
    // 必须在dealloc方法中移除观察
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
- (void)day_mode
{
    [StateManager setBackgroundColorWithView:self.view];

}
- (void)night_mode
{
    [StateManager setBackgroundColorWithView:self.view];

}
@end
