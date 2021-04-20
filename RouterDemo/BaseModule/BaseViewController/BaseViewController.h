//
//  BaseViewController.h
//  Fire
//
//  Created by Destiny on 2018/6/14.
//  Copyright © 2018年 Destiny. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef  void (^BackBlock)(NSDictionary *valueDic);

@interface BaseViewController : UIViewController

@property (strong, nonatomic) NSDictionary *valueDic;
/** 完成的回调block */
@property (nonatomic, copy) BackBlock backBlock;

- (void)onGoBack;

/**
 导航增加右按钮
 
 @param rightImg 按钮图片
 @param rightAction 按钮事件
 */
- (void)setupNavigationRightItem:(UIImage *)rightImg  rightAction:(SEL)rightAction;

@end
