//
//  LWSwitchCellViewModel.m
//  MVVMPracticeDemo
//
//  Created by wuleslie on 2018/8/12.
//  Copyright © 2018 Leslie Studio. All rights reserved.
//

#import "LWSwitchCellViewModel.h"
#import "LWSettingModel.h"

@interface LWSwitchCellViewModel ()

@property (nonatomic, copy) NSString *leftText;
@property (nonatomic, assign, readwrite) BOOL isConcerned;

@end

@implementation LWSwitchCellViewModel

- (id)initWithBaseModel:(LWSettingModel *)model {
    self = [super init];
    if (self) {
        self.leftText = model.name;
        self.isConcerned = model.status;
    }
    return self;
}

- (void)updateSettingStatus:(BOOL)isConcerned {
    self.isConcerned = isConcerned;
}

@end
