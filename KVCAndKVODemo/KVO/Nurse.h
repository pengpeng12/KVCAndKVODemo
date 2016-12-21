//
//  Nure.h
//  KVCAndKVODemo
//
//  Created by apple  on 2016/12/20.
//  Copyright © 2016年 apple . All rights reserved.
//

#import <Foundation/Foundation.h>
@class Children;
@interface Nurse : NSObject{
    Children *_children;
}
- (instancetype)initWithChildren:(Children *)children;
@end
