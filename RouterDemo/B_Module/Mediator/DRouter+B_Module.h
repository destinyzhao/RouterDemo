//
//  DRouter+B_Module.h
//  RouterDemo
//
//  Created by Destiny on 2021/4/20.
//

#import "DRouter.h"

NS_ASSUME_NONNULL_BEGIN

@interface DRouter (B_Module)

- (UIViewController *)mediator_BModulePage1:(NSMutableDictionary *)params;

- (UIViewController *)mediator_BModulePage1:(NSMutableDictionary *)params completion:(void (^)(NSDictionary *))completion;

@end

NS_ASSUME_NONNULL_END
