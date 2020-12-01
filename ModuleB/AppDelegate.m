//
//  AppDelegate.m
//  ModuleB
//
//  Created by peixu on 2020/11/30.
//  Copyright © 2020 peixu. All rights reserved.
//

#import "AppDelegate.h"
#import "ModuleBController.h"

@interface AppDelegate ()


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame: [UIScreen mainScreen].bounds];
       self.window.backgroundColor = [UIColor whiteColor];
      ModuleBController *moduleBvC = [ModuleBController new];
      UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:moduleBvC];
      self.window.rootViewController = nav;
      [self.window makeKeyAndVisible];
    
    return YES;
}





@end
