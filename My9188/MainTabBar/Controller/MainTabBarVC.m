//
//  MainTabBarVC.m
//  My9188
//
//  Created by jinx huang on 16/8/15.
//  Copyright © 2016年 jinx huang. All rights reserved.
//

#import "MainTabBarVC.h"
#import "DiscoverVC.h"
#import "HomeMainVC.h"
#import "GameMainVC.h"
#import "MineVC.h"
@interface MainTabBarVC ()

@end

@implementation MainTabBarVC
{
    UITabBarController* _tabBar;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    [self createTabBarItem];
    // Do any additional setup after loading the view.
}

-(void)createTabBarItem{
    _tabBar=[[UITabBarController alloc]init];
    UINavigationController* homeNav=[[UINavigationController alloc]initWithRootViewController:[[HomeMainVC alloc]init]];
    homeNav.tabBarItem.title=@"购彩大厅";
    UINavigationController* gameNav=[[UINavigationController alloc]initWithRootViewController:[[GameMainVC alloc]init]];
    gameNav.tabBarItem.title=@"比赛实况";
    UINavigationController* discoverNav=[[UINavigationController alloc]initWithRootViewController:[[DiscoverVC  alloc]init]];
    discoverNav.tabBarItem.title=@"发现";
    UINavigationController* mainNav=[[UINavigationController alloc]initWithRootViewController:[[MineVC alloc]init]];
    mainNav.tabBarItem.title=@"我的彩票";
    _tabBar.viewControllers=@[homeNav,gameNav,discoverNav,mainNav];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
