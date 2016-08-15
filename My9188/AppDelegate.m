//
//  AppDelegate.m
//  My9188
//
//  Created by jinx huang on 16/8/15.
//  Copyright © 2016年 jinx huang. All rights reserved.
//

#import "AppDelegate.h"
#import "DiscoverVC.h"
#import "HomeMainVC.h"
#import "GameMainVC.h"
#import "MineVC.h"
#import "MainTabBarVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
{
    UITabBarController* _tabBar;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self createTabBarItem];
    self.window.rootViewController=_tabBar;
    return YES;
}

-(void)createTabBarItem{
    _tabBar=[[UITabBarController alloc]init];
    [_tabBar.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: ThemeColor} forState:UIControlStateSelected];
    
    HomeMainVC* homeNav=[[HomeMainVC alloc]init];
    homeNav.tabBarItem.title=@"购彩大厅";
    homeNav.tabBarItem.image=[UIImage imageNamed:@"gcdt"];
    homeNav.tabBarItem.selectedImage=[UIImage imageNamed:@"gcdt_selected"];
    
    UINavigationController* gameNav=[[UINavigationController alloc]initWithRootViewController:[[GameMainVC alloc]init]];
    gameNav.tabBarItem.title=@"比赛实况";
    gameNav.tabBarItem.image=[UIImage imageNamed:@"live_normal"];
    gameNav.tabBarItem.selectedImage=[UIImage imageNamed:@"live_selected"];
    
    UINavigationController* discoverNav=[[UINavigationController alloc]initWithRootViewController:[[DiscoverVC  alloc]init]];
    discoverNav.tabBarItem.title=@"发现";
    discoverNav.tabBarItem.image=[UIImage imageNamed:@"faxian"];
    discoverNav.tabBarItem.selectedImage=[UIImage imageNamed:@"faxianclick"];
    
    UINavigationController* mineNav=[[UINavigationController alloc]initWithRootViewController:[[MineVC alloc]init]];
    mineNav.tabBarItem.title=@"我的彩票";
    mineNav.tabBarItem.image=[UIImage imageNamed:@"mylottery"];
    mineNav.tabBarItem.selectedImage=[UIImage imageNamed:@"mylottery_selected"];
    
    _tabBar.viewControllers=@[homeNav,gameNav,discoverNav,mineNav];
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
