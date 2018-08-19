//
//  LWSettingModel.h
//  MVVMPracticeDemo
//
//  Created by wuleslie on 2018/8/12.
//  Copyright © 2018 Leslie Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LWSettingModel : NSObject

@property (nonatomic, copy) NSString *name; 
@property (nonatomic, assign) NSInteger status; // 状态：0-关闭，1:打开

@end
