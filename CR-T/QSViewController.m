//
//  QSViewController.m
//  CR-T
//
//  Created by qswdzy on 16/3/11.
//  Copyright © 2016年 qswdzy. All rights reserved.
//

#import "QSViewController.h"
#import "QSHomeViewController.h"
#import "QSIntroduceViewController.h"
#import "QSUppgradeViewController.h"
#import "QSOtherViewController.h"
@interface QSViewController ()

@end

@implementation QSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 QSHomeViewController *oneVC = [[QSHomeViewController alloc]init];
UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:oneVC];

// 设置tabBar的标题
nav1.title = @"首页";
    

// 设置tabBar的图标
nav1.tabBarItem.image = [UIImage imageNamed:@"tabbar_home"];

// 设置navigationBar的标题
oneVC.navigationItem.title = @"首页";

// 设置背景色（这些操作可以交给每个单独子控制器去做）
oneVC.view.backgroundColor = [UIColor whiteColor];

// 1.3 把UINavigationController交给UITabBarController管理
[self addChildViewController:nav1];

// 2.添加第2个控制器
QSIntroduceViewController *twoVC = [[QSIntroduceViewController alloc]init];
UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:twoVC];
nav2.title = @"介绍";
nav2.tabBarItem.image = [UIImage imageNamed:@"compose_keyboardbutton_background"];
twoVC.navigationItem.title = @"介绍";
twoVC.view.backgroundColor = [UIColor blueColor];
[self addChildViewController:nav2];

// 3.添加第3个控制器
QSUppgradeViewController *threeVC = [[QSUppgradeViewController alloc]init];
UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:threeVC];
nav3.title = @"升级";
nav3.tabBarItem.image = [UIImage imageNamed:@"compose_trendbutton_background"];
threeVC.navigationItem.title = @"升级";
threeVC.view.backgroundColor = [UIColor yellowColor];
[self addChildViewController:nav3];

// 4.添加第4个控制器
QSOtherViewController *fourVC = [[QSOtherViewController alloc]init];
UINavigationController *nav4 = [[UINavigationController alloc]initWithRootViewController:fourVC];
nav4.title = @"其他";
nav4.tabBarItem.image = [UIImage imageNamed:@"tabbar_profile_selected"];
fourVC.navigationItem.title = @"其他";
fourVC.view.backgroundColor = [UIColor grayColor];
[self addChildViewController:nav4];
}

@end
