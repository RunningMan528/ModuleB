//
//  Target_ModuleB.m
//  ModuleB
//
//  Created by peixu on 2020/11/30.
//  Copyright © 2020 peixu. All rights reserved.
//

#import "Target_ModuleB.h"
#import "ModuleBController.h"

typedef void(^RouterCallBack)(NSString *reslut);

@interface Target_ModuleB ()

@property (nonatomic,copy) RouterCallBack callBack;

@end

@implementation Target_ModuleB

- (UIViewController *)Action_viewController:(NSDictionary *)params{
    ModuleBController *moduleBVC = [[ModuleBController alloc]init];
    if (params.allKeys.count > 0 && params[@"callBack"]) {
        self.callBack = params[@"callBack"];
    }
    if (self.callBack) {
        self.callBack(@"这是路由回调的数据");
    }
    if ([params.allKeys containsObject:@"contentText"]) {
        moduleBVC.contentText = [NSString stringWithFormat:@"%@",params[@"contentText"]];
    }
    return  moduleBVC;
}

@end

