//
//  LWSwitchCellViewModel.h
//  MVVMPracticeDemo
//
//  Created by wuleslie on 2018/8/12.
//  Copyright © 2018 Leslie Studio. All rights reserved.
//

#import "LWBaseViewModel.h"

@class LWSettingModel;

@interface LWSwitchCellViewModel : LWBaseViewModel

@property (nonatomic, readonly) NSString *leftText;
@property (nonatomic, readonly) BOOL isConcerned;

- (id)initWithBaseModel:(LWSettingModel *)model;
- (void)updateSettingStatus:(BOOL)isConcerned;

@end
