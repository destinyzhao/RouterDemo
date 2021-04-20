//
//  Target_Commons.m
//  RouterDemo
//
//  Created by Destiny on 2021/4/20.
//

#import "Target_Commons.h"
#import <objc/runtime.h>
#import "NSObject+XYSKVO.h"

typedef void (^callBlock)(NSDictionary *);


NSString * const DRouterTargetCommons = @"Commons";

@implementation Target_Commons


// 自定义push方法
- (UIViewController *)Action_Push_CommonController:(NSDictionary *)params{
    NSString *vcClassName = params[@"vcClassName"];
    NSString *vcTitle = params[@"vcTitle"];
    
    callBlock callback = params[@"callback"];
    
    // 因为action是从属于ModuleA的，所以action直接可以使用ModuleA里的所有声明
    Class class = NSClassFromString(vcClassName);
    BaseViewController *controller = [[class alloc] init];
    controller.title = vcTitle;
    controller.didViewControllerBlock = ^(NSDictionary *valueDic) {
        if (callback) {
            callback(valueDic);
        }
    };
    
    return controller;
}

@end
