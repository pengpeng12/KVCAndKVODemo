//
//  Author.h
//  KVCAndKVODemo
//
//  Created by apple  on 2016/12/20.
//  Copyright © 2016年 apple . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Author : NSObject{
    //作者的名字
    NSString *_name;
    
    //作者出版的书籍集合
    NSArray *_issueBook;
}

@end
