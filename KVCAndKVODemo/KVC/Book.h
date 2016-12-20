//
//  Book.h
//  KVCAndKVODemo
//
//  Created by apple  on 2016/12/20.
//  Copyright © 2016年 apple . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Author.h"
@interface Book : NSObject{
    Author *_author;
}
@property(nonatomic,strong)NSString *name;
@property(nonatomic, assign)float price;
@end
