//
//  MainController.m
//  Fire
//
//  Created by Destiny on 2018/6/20.
//  Copyright © 2018年 Destiny. All rights reserved.
//

#import "MainController.h"
#import "AHomeController.h"
#import "BHomeController.h"
#import "CHomeController.h"
#import "BaseNavigationController.h"

@interface MainController ()


@end

@implementation MainController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupAllChildViewControllers];
    [self.tabBar setBackgroundColor:[UIColor whiteColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/**
 *  初始化所有的子控制器
 */
- (void)setupAllChildViewControllers
{
    AHomeController *aHome = [[AHomeController alloc] init];
    aHome.title = @"A Molule Home";
    [self setupChildViewController:aHome title:@"AHome" imageName:@"tabbar_n" selectedImageName:@"tabbar_s"];
    
    BHomeController *bHome = [[BHomeController alloc] init];
    bHome.title = @"B Molule Home";
    [self setupChildViewController:bHome title:@"BHome" imageName:@"tabbar_n" selectedImageName:@"tabbar_s"];
    
    CHomeController *cHome = [[CHomeController alloc]init];
    cHome.title = @"C Molule Home";
    [self setupChildViewController:cHome title:@"CHome" imageName:@"tabbar_n" selectedImageName:@"tabbar_s"];
    
  
    self.selectedIndex = 0;
}


/**
 *  初始化一个子控制器
 *
 *  @param childVc           需要初始化的子控制器
 *  @param title             标题
 *  @param imageName         图标
 *  @param selectedImageName 选中的图标
 */
- (void)setupChildViewController:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    childVc.tabBarItem.title = title;
    childVc.tabBarItem.image = [UIImage imageNamed:imageName];
    UIImage *selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVc.tabBarItem.selectedImage = selectedImage;
    BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController:childVc];
    
    [self addChildViewController:nav];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
