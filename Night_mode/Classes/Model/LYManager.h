//
//  LYManager.h
//  Night_mode
//
//  Created by 俊洋洋 on 16/12/23.
//  Copyright © 2016年 俊洋洋. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LYManager : NSObject

@property (nonatomic, assign)BOOL isNight;

+ (LYManager *)shareInstance;
- (void)loadState;
- (void)saveState;

@end
