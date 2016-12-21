//
//  Nure.m
//  KVCAndKVODemo
//
//  Created by apple  on 2016/12/20.
//  Copyright © 2016年 apple . All rights reserved.
//

#import "Nurse.h"
#import "Children.h"
@implementation Nurse
- (instancetype)initWithChildren:(Children *)children{
    self = [super init];
    if(self != nil){
        _children = children;
        //观察小孩的HappyValue
        //使用KVO为_children对象添加一个观察者，用于观察监听happyValue属性值是否被修改
        [_children addObserver:self forKeyPath:@"happyValue" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];
        //观察小孩的hurryyValue
        [_children addObserver:self forKeyPath:@"hurryValue" options:NSKeyValueObservingOptionNew |NSKeyValueObservingOptionOld context:nil];
    }

    return self;
}

//触发方法
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    NSLog(@"%@",change);
    //通过keyPath来判断不同属性的观察者
    if([keyPath isEqualToString:@"happyValue"]){
        NSNumber *happyValue = [change objectForKey:@"new"];
        NSInteger value = [happyValue integerValue];
        NSLog(@"happyValue---%ld",value);
    }else if ([keyPath isEqualToString:@"hurryValue"]){
        NSNumber *hurryValue = [change objectForKey:@"new"];
        NSInteger value = [hurryValue integerValue];
        NSLog(@"hurryValue---%ld",value);
    
    }


}
- (void)dealloc{
    //移除观察者
    [_children removeObserver:self forKeyPath:@"happyValue"];
    [_children removeObserver:self forKeyPath:@"hurryValue"];
}
@end
