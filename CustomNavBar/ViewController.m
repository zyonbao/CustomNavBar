//
//  ViewController.m
//  CustomNavBar
//
//  Created by Zyonbao on 15/7/2.
//  Copyright (c) 2015年 zyonbao. All rights reserved.
//

#import "ViewController.h"
#import "ContentViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.titleLabel.text = @"HomePage";
    UIButton * jmpBtn = [[UIButton alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
    [jmpBtn setTitle:@"GoNext" forState:UIControlStateNormal];
    [jmpBtn addTarget:self action:@selector(contentVC:) forControlEvents:UIControlEventTouchUpInside];
    jmpBtn.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:jmpBtn];
}

- (void)contentVC:(UIButton *)sender{
    ContentViewController *contentVC = [[ContentViewController alloc] init];
    [self.navigationController pushViewController:contentVC animated:YES];
}
@end
