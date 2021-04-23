//
//  Target_Commons.m
//  RouterDemo
//
//  Created by Destiny on 2021/4/20.
//

#import "Target_Commons.h"
#import "UIViewController+Parameter.h"
#import "UIViewController+Block.h"
#import <objc/runtime.h>

typedef void (^callBlock)(NSDictionary *);


NSString * const DRouterTargetCommons = @"Commons";

@implementation Target_Commons


// 自定义push方法
- (UIViewController *)Action_Push_CommonController:(NSDictionary *)params{
    NSString *vcClassName = params[@"vcClassName"];
    
    callBlock callback = params[@"callback"];
    
    Class class = NSClassFromString(vcClassName);
    UIViewController *controller = [[class alloc] init];
    //传值
    if([params objectForKey:@"vauleParameter"] != nil){
        controller.parameter = [params objectForKey:@"vauleParameter"];
    }
    //参数回调
    if(callback != nil){
        controller.backBlock = ^(NSDictionary * _Nonnull parameter) {
            callback(parameter);
        };
    }
    
    return controller;
}


@end
