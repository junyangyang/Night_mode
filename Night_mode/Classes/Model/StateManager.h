//
//  StateManager.h
//  Night_mode
//
//  Created by 俊洋洋 on 16/12/23.
//  Copyright © 2016年 俊洋洋. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StateManager : NSObject
+ (void)setLabelColorWithLabel:(UILabel *)label;

+ (void)setBackgroundColorWithView:(UIView *)view;

+ (void)setButtonTitleColorWithButton:(UIButton *)button;
@end
