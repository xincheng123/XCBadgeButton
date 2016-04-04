//
//  ViewController.m
//  测试
//
//  Created by 赵新成 on 16/4/4.
//  Copyright © 2016年 赵新成. All rights reserved.
//

#import "ViewController.h"
#import "XCBadgeButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    XCBadgeButton * badgeBtn = [[XCBadgeButton alloc] init];
    badgeBtn.center = self.view.center;
    badgeBtn.badgeValue = @"999";
    [self.view addSubview:badgeBtn];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
