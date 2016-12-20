//
//  ViewController.m
//  KVCAndKVODemo
//
//  Created by apple  on 2016/12/19.
//  Copyright © 2016年 apple . All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "dog.h"
#import "Author.h"
#import "Book.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    Person *p = [Person new];
    [p setValue:@"jiangwei" forKey:@"name"];
    
    dog *dg = [dog new];
    [p setValue:dg forKey:@"dog"];
    
    //KVC设置值时，如果属性有set方法，则优先调用set方法，如果没有则直接设置上去，get方法类似
    
    //
    NSString *name = [p valueForKey:@"name"];
    NSLog(@"%@",name);
    [p setValue:@22 forKey:@"age"];
    NSLog(@"%@",[p valueForKey:@"age"]);
    
    
    //------------KVC键值路径
    Book *book = [[Book alloc] init];
    Author *author = [[Author alloc] init];
    //设置作者
    [book setValue:author forKey:@"author"];
    //设置作者的名字
    //路径为：author.name,中间用点号进行连接
    [book setValue:@"jiangwei" forKeyPath:@"author.name"];
    NSString *authorName = [author valueForKey:@"name"];
    NSLog(@"authorName is--%@",authorName);
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
