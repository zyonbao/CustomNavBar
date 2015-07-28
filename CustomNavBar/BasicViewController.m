//
//  BasicViewController.m
//  CustomNavBar
//
//  Created by Zyonbao on 15/6/17.
//  Copyright (c) 2015年 zyonbao. All rights reserved.
//

#import "BasicViewController.h"
#import "CustomNavigationBar.h"

@interface BasicViewController ()

@end

@implementation BasicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.navigationItem.titleView.frame.size.width, 44)];
    _titleLabel.textColor = [UIColor blackColor];
    _titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:20.0];
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    self.navigationItem.titleView = _titleLabel;
    self.edgesForExtendedLayout = UIRectEdgeNone;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
