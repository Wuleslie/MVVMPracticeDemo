//
//  LWSettingRequest.h
//  MVVMPracticeDemo
//
//  Created by wuleslie on 2018/8/19.
//  Copyright © 2018 Leslie Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LWSettingModel;

@interface LWSettingRequest : NSObject

- (BOOL)fetchSettingDataWithCompletion:(void(^)(NSArray <LWSettingModel *>*))completion;
@end
