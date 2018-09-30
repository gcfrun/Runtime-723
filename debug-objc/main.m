//
//  main.m
//  debug-objc
//
//  Created by GongCF on 2018/9/30.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <objc/message.h>
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Class newClass = objc_allocateClassPair(objc_getClass("Person"), "newClass", 0);
        objc_registerClassPair(newClass);
       ((void(*)(id,SEL)) objc_msgSend)(newClass,NSSelectorFromString(@"test1"));
        ((void(*)(id,SEL)) objc_msgSend)([newClass new],NSSelectorFromString(@"test2"));
        
    }
    return 0;
}
