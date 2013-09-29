//
//  AppDelegate.m
//  CollapsableNavBar
//
//  Created by Chris Grant on 29/09/2013.
//  Copyright (c) 2013 Chris Grant. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"

@implementation AppDelegate

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    HomeViewController *vc = [HomeViewController new];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:vc];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = navController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end