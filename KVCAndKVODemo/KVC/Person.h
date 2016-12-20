//
//  Person.h
//  KVCAndKVODemo
//
//  Created by apple  on 2016/12/19.
//  Copyright © 2016年 apple . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "dog.h"
@interface Person : NSObject{
@private
    NSString *_name;
    dog *_dog;
    NSInteger age;
}

@end
