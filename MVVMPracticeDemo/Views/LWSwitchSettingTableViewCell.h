//
//  LWSwitchSettingTableViewCell.h
//  MVVMPracticeDemo
//
//  Created by wuleslie on 2018/8/12.
//  Copyright © 2018 Leslie Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LWSwitchCellViewModel;

@interface LWSwitchSettingTableViewCell : UITableViewCell

- (void)updateWithCellModel:(LWSwitchCellViewModel *)viewModel;

@end
