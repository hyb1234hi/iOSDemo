//
//  AppDelegate.m
//  Demo
//
//  Created by 王敏欣 on 2019/1/9.
//  Copyright © 2019年 test. All rights reserved.
//

#import "AppDelegate.h"
#import "TextViewController.h"
#import "ZZFlexViewController.h"
#import "NetworkViewController.h"
#import "ObjectCViewController.h"
#import "LifecycleViewController.h"
#import "MainViewController.h"
#import "KeyboardViewController.h"
#import "AlertViewController.h"
#import "SegmentViewController.h"
#import "DropDownViewController.h"
#import "DialogViewController.h"

#import "LabelViewController.h"
#import "MLabelViewController.h"

#import "VideoViewController.h"
#import "WithdrawViewController.h"
#import "ActivityViewController.h"

#import "VerticalButtonController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    VerticalButtonController *viewController = [[VerticalButtonController alloc] init];
    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}


- (void)applicationWillTerminate:(UIApplication *)application {
    
}


@end
