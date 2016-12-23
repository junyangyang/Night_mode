//
//  StateManager.m
//  Night_mode
//
//  Created by 俊洋洋 on 16/12/23.
//  Copyright © 2016年 俊洋洋. All rights reserved.
//

#import "StateManager.h"

@implementation StateManager
+ (void)setLabelColorWithLabel:(UILabel *)label {
    
    if ([LYManager shareInstance].isNight) {
        label.textColor = kLabelNightColor;
    } else {
        label.textColor = kLabelLightColor;
    }
    
}

+ (void)setBackgroundColorWithView:(UIView *)view {
    if ([LYManager shareInstance].isNight) {
        view.backgroundColor = kBackgroundViewNightColor;
    } else {
        view.backgroundColor = kBackgroundViewLightColor;
    }
}

+ (void)setButtonTitleColorWithButton:(UIButton *)button {
    if ([LYManager shareInstance].isNight) {
        [button setTitleColor:kButtonTitleNightColor forState:UIControlStateNormal];
    } else {
        [button setTitleColor:kButtonTitleLightColor forState:UIControlStateNormal];
    }
}
@end
