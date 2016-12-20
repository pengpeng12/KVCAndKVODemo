//
//  Nure.m
//  KVCAndKVODemo
//
//  Created by apple  on 2016/12/20.
//  Copyright © 2016年 apple . All rights reserved.
//

#import "Nure.h"
#import "Children.h"
@implementation Nure
- (instancetype)initWithChildren:(Children *)children{
    self = [super init];
    if(self != nil){
        _children = children;
        //观察小孩的HappyValue
        //使用KVO为_children对象添加一个观察者，用于观察监听happyValue属性值是否被修改
//        [_children addObserver:self forKeyPath:@"happyValue" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:<#(nullable void *)#>];
//        //观察小孩的hurryyValue
//        [_children addObserver:<#(nonnull NSObject *)#> forKeyPath:<#(nonnull NSString *)#> options:<#(NSKeyValueObservingOptions)#> context:<#(nullable void *)#>];
    }

    return self;
}
@end
