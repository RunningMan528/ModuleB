//
//  ModuleBController.m
//  ModuleB
//
//  Created by peixu on 2020/11/30.
//  Copyright © 2020 peixu. All rights reserved.
//

#import "ModuleBController.h"
#import "PageBViewController.h"

@interface ModuleBController ()

@end

@implementation ModuleBController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
    self.title = @"模块B";
    
    CGFloat screenWidth = UIScreen.mainScreen.bounds.size.width;
    
    UILabel *rotuerLabel = [[UILabel alloc]init];
    rotuerLabel.text = self.contentText.length > 0 ? self.contentText : @"数据没有传过来唉~";
    rotuerLabel.textAlignment = NSTextAlignmentCenter;
    rotuerLabel.font = [UIFont systemFontOfSize:15];
    rotuerLabel.backgroundColor = [UIColor greenColor];
    rotuerLabel.frame = CGRectMake((screenWidth - 200) / 2, 200, 200, 50);
    [self.view addSubview:rotuerLabel];
    
    UIButton *jumpBtn = [[UIButton alloc]init];
    jumpBtn.frame = CGRectMake((screenWidth - 150) / 2,300 , 150, 50);
    [jumpBtn addTarget:self action:@selector(jumpBtnClick) forControlEvents:UIControlEventTouchUpInside];
    jumpBtn.backgroundColor = [UIColor orangeColor];
    [jumpBtn setTitle:@"跳转到详情页面" forState:UIControlStateNormal];
    [self.view addSubview:jumpBtn];
    
    
    
}

- (void)jumpBtnClick{
    PageBViewController *pageBvc = [[PageBViewController alloc]init];
    [self.navigationController pushViewController:pageBvc animated:YES];
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
