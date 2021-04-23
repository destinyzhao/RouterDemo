//
//  UIViewController+Block.h
//  RouterDemo
//
//  Created by Destiny on 2021/4/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef  void (^BackBlock)(NSDictionary *parameter);

@interface UIViewController (Block)

/** 完成的回调block */
@property (nonatomic, copy) BackBlock backBlock;

@end

NS_ASSUME_NONNULL_END
