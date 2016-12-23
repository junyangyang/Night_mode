//
//  LYManager.m
//  Night_mode
//
//  Created by 俊洋洋 on 16/12/23.
//  Copyright © 2016年 俊洋洋. All rights reserved.
//

#import "LYManager.h"

@implementation LYManager

+ (LYManager *)shareInstance
{
    static LYManager *manager ;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        manager = [[LYManager alloc]init];
        [manager loadState];
    });
    return manager;
}

- (void)setIsNight:(BOOL)isNight
{
    _isNight = isNight;
    [NOTIFICATION postNotificationName:_isNight?Night_mode:Day_mode object:nil];
}
- (void)loadState
{
   NSString *isNight = [DEFAULTS objectForKey:@"isNight"];
    if ([isNight isEqualToString:@"yes"]) {
        self.isNight = YES;
    }else{
        self.isNight = NO;
    }
}
- (void)saveState
{
    NSString *str ;
    if (self.isNight) {
        str = @"yes";
    }else{
        str = @"no";
    }
    [DEFAULTS setObject:str forKey:@"isNight"];
    [DEFAULTS synchronize];
}
@end
