//
//  ViewController.m
//  MVVMPracticeDemo
//
//  Created by wuleslie on 2018/8/12.
//  Copyright © 2018 Leslie Studio. All rights reserved.
//

#import "ViewController.h"
#import "LWSettingViewController.h"
#import "LWSettingViewModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    LWSettingViewModel *viewModel = [[LWSettingViewModel alloc] init];
    LWSettingViewController *settingVC = [[LWSettingViewController alloc] initWithViewModel:viewModel];
    [self.navigationController pushViewController:settingVC animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
