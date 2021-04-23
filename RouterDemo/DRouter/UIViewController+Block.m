//
//  UIViewController+Block.m
//  RouterDemo
//
//  Created by Destiny on 2021/4/23.
//

#import "UIViewController+Block.h"
#import <objc/runtime.h>

static const char * BLOCK_KEY = "block_key";

@implementation UIViewController (Block)

- (void)setBackBlock:(BackBlock)backBlock{
    objc_setAssociatedObject(self, BLOCK_KEY, backBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (BackBlock)backBlock {
    return  objc_getAssociatedObject(self, BLOCK_KEY);
}

@end
