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

#import "Children.h"
#import "Nurse.h"
@interface ViewController (){
    Nurse *_nurse;
}

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
//    Book *book = [[Book alloc] init];
//    Author *author = [[Author alloc] init];
//    //设置作者
//    [book setValue:author forKey:@"author"];
//    //设置作者的名字
//    //路径为：author.name,中间用点号进行连接
//    [book setValue:@"jiangwei" forKeyPath:@"author.name"];
//    NSString *authorName = [author valueForKey:@"name"];
//    NSLog(@"authorName is--%@",authorName);
    
    //-------------KVC的运算
    Author *author = [[Author alloc] init];
    [author setValue:@"莫言" forKeyPath:@"name"];
    
    Book *book1 = [[Book alloc] init];
    book1.name = @"红高粱";
    book1.price = 9;
    Book *book2 = [[Book alloc] init];
    book2.name = @"蛙";
    book2.price = 10;
    NSArray *array = [NSArray arrayWithObjects:book1,book2, nil];
    [author setValue:array forKeyPath:@"issueBook"];
    
    //基本数据类型会自动被包装成NSNumber，装到数组中
    //得到所有书籍的价格
    NSArray *priceArray = [author valueForKeyPath:@"issueBook.price"];
    NSLog(@"priceArray---%@",priceArray);
    //获取数组的大小
    NSNumber *count = [author valueForKeyPath:@"issueBook.@count"];
    NSLog(@"count = %@",count);
    //获取书籍价格的总和
    NSNumber *sum = [author valueForKeyPath:@"issueBook.@sum.price"];
    NSLog(@"priceSum= %@",sum);
    //获取书籍的平均值
    NSNumber *avg = [author valueForKeyPath:@"issueBook.@avg.price"];
    NSLog(@"avg-%@",avg);
    //获取书籍的价格最大值最小值
    NSNumber *max = [author valueForKeyPath:@"issueBook.@max.price"];
    NSNumber *min = [author valueForKeyPath:@"issueBook.@min.price"];
    
    
    
    //KVO
    Children *child = [[Children alloc] init];
    _nurse = [[Nurse alloc] initWithChildren:child];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
