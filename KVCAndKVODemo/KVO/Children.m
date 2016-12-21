//
//  Children.m
//  KVCAndKVODemo
//
//  Created by apple  on 2016/12/20.
//  Copyright © 2016年 apple . All rights reserved.
//

#import "Children.h"

@implementation Children
- (instancetype)init{
    self = [super init];
    if (self != nil) {
        //启动定时器
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
        self.happyValue = 100;
        self.hurryValue = 100;
    }
    return self;
}
- (void)timerAction{
     //使用set方法修改属性值
    NSInteger happyValue = _happyValue;
    [self setHappyValue:--happyValue];
    
    NSInteger hurryValue = _hurryValue;
    [self setHurryValue:--hurryValue];
}
@end
