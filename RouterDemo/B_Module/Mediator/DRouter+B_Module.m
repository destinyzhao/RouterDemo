//
//  DRouter+B_Module.m
//  RouterDemo
//
//  Created by Destiny on 2021/4/20.
//

#import "DRouter+B_Module.h"

//  字符串 是类名 Target_xxx.h 中的 xxx 部分
NSString * const kMediatorTarget_B_Module = @"B_Module";

@implementation DRouter (B_Module)

- (UIViewController *)mediator_BModulePage1:(NSMutableDictionary *)params{
    UIViewController *viewController = [self performTarget:@"Commons"
                                                    action:@"Action_Push_CommonController"
                                                    params:params shouldCacheTarget:NO];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        NSLog(@"%@ 未能实例化页面", NSStringFromSelector(_cmd));
        return [[UIViewController alloc] init];
    }
}

- (UIViewController *)mediator_BModulePage1:(NSMutableDictionary *)params completion:(void (^)(NSDictionary *))completion{
    [params setValue:completion forKey:@"callback"];
    return [self mediator_BModulePage1:params];
}

@end
