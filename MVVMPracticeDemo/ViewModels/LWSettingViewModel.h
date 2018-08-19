//
//  LWSettingViewModel.h
//  MVVMPracticeDemo
//
//  Created by wuleslie on 2018/8/12.
//  Copyright © 2018 Leslie Studio. All rights reserved.
//

#import "LWBaseViewModel.h"

@class LWSwitchCellViewModel;

@interface LWSettingViewModel : LWBaseViewModel

@property (nonatomic, readonly) NSArray <LWSwitchCellViewModel*> *cellViewModelList;
@property (nonatomic, readonly) RACCommand *fetchCommand;

@end
