//
//  Target_Commons.h
//  RouterDemo
//
//  Created by Destiny on 2021/4/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

extern NSString * const DRouterTargetCommons;

@interface Target_Commons : NSObject

// 自定义push方法
- (UIViewController *)Action_Push_CommonController:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
