//
//  MainViewController.m
//  Category
//
//  Created by soda on 2019/9/23.
//  Copyright © 2019 123. All rights reserved.
//

#import "MainViewController.h"
#import "MUIJKPlayerViewController.h"
#import "MUTestViewController.h"
@interface MainViewController ()


@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //测试ijkplayer
    UIButton *ijkBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, 100, 40)];
    [ijkBtn setTitle:@"测试ijk" forState:UIControlStateNormal];
    [ijkBtn setTitleColor:UIColor.redColor forState:UIControlStateNormal];
    [self.view addSubview:ijkBtn];
    [ijkBtn addTarget:self action:@selector(gotoIJKPlayer) forControlEvents:UIControlEventTouchUpInside];
    //测试各种分类；
    UIButton *testBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 240, 100, 40)];
    [testBtn setTitle:@"测试各种样式" forState:UIControlStateNormal];
    [testBtn setTitleColor:UIColor.redColor forState:UIControlStateNormal];
    [self.view addSubview:testBtn];
    [testBtn addTarget:self action:@selector(gotoTestVC) forControlEvents:UIControlEventTouchUpInside];
    
    
}


- (void)gotoIJKPlayer {
    MUIJKPlayerViewController *vc = [[MUIJKPlayerViewController alloc] init];
    [self.navigationController pushViewController:vc animated:true];
}

- (void)gotoTestVC {
    MUTestViewController *vc = [[MUTestViewController alloc] init];
    [self.navigationController pushViewController:vc animated:true];
}



@end
