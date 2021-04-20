//
//  Target_Commons.m
//  RouterDemo
//
//  Created by Destiny on 2021/4/20.
//

#import "Target_Commons.h"
#import <objc/runtime.h>

typedef void (^callBlock)(NSDictionary *);


NSString * const DRouterTargetCommons = @"Commons";

@implementation Target_Commons


// 自定义push方法
- (UIViewController *)Action_Push_CommonController:(NSDictionary *)params{
    NSString *vcClassName = params[@"vcClassName"];
    
//    callBlock callback = params[@"callback"];
    
    Class class = NSClassFromString(vcClassName);
    UIViewController *controller = [[class alloc] init];
    //传值
    if([params objectForKey:@"vauleParameter"] != nil){
        [controller setValue:[params objectForKey:@"vauleParameter"] forKey:@"vauleParameter"];
    }
    
//    controller.backBlock = ^(NSDictionary *valueDic) {
//        if (callback) {
//            callback(valueDic);
//        }
//    };
    
    return controller;
}

@end
