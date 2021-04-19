//
//  AppDelegate.m
//  RouterDemo
//
//  Created by Destiny on 2021/4/19.
//

#import "AppDelegate.h"
#import "MainController.h"
#import "AHomeController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    MainController *minTabBar = [[MainController alloc]init];
    self.window.rootViewController = minTabBar;
    
    [self.window makeKeyAndVisible];

    return YES;
}




@end
