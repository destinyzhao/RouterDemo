//
//  UIViewController+Parameter.m
//  RouterDemo
//
//  Created by Destiny on 2021/4/22.
//

#import "UIViewController+Parameter.h"
#import <objc/runtime.h>

static const char * PARAMETER_KEY = "parameter_key";

@implementation UIViewController (Parameter)

- (void)setParameter:(NSDictionary *)parameter{
    objc_setAssociatedObject(self, PARAMETER_KEY, parameter, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSDictionary *)parameter {
    return  objc_getAssociatedObject(self, PARAMETER_KEY);
}


@end
