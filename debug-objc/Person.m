//
//  Person.m
//  debug-objc
//
//  Created by GongCF on 2018/9/30.
//

#import "Person.h"

@implementation Person
+ (void)load
{
    NSLog(@"Person Load!");
}

+ (void)test1{
    NSLog(@"test1!");
}

- (void)test2{
    NSLog(@"test2!");
}
@end
