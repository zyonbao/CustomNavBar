//
//  ContentViewController.m
//  CustomNavBar
//
//  Created by Zyonbao on 15/7/2.
//  Copyright (c) 2015年 zyonbao. All rights reserved.
//

#import "ContentViewController.h"

@interface ContentViewController ()

@end

@implementation ContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.titleLabel.text = @"Content";
    UIButton *navBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
    navBtn.backgroundColor = [UIColor darkGrayColor];
    [navBtn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [navBtn setTitle:@"Back" forState:UIControlStateNormal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:navBtn];
    [navBtn addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)back:(UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
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
