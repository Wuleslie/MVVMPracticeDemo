//
//  LWSettingViewController.h
//  MVVMPracticeDemo
//
//  Created by wuleslie on 2018/8/12.
//  Copyright © 2018 Leslie Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LWSettingViewModel;

@interface LWSettingViewController : UIViewController

- (id)initWithViewModel:(LWSettingViewModel *)viewModel NS_DESIGNATED_INITIALIZER;

@end
