//
//  Target_ModuleB.m
//  ModuleB
//
//  Created by peixu on 2020/11/30.
//  Copyright © 2020 peixu. All rights reserved.
//

#import "Target_ModuleB.h"
#import "ModuleBController.h"

@implementation Target_ModuleB

- (UIViewController *)Action_viewController:(NSDictionary *)params{
    ModuleBController *moduleBVC = [[ModuleBController alloc]init];
    return  moduleBVC;
}

@end

