//
//  LWSettingRequest.m
//  MVVMPracticeDemo
//
//  Created by wuleslie on 2018/8/19.
//  Copyright © 2018 Leslie Studio. All rights reserved.
//

#import "LWSettingRequest.h"
#import "LWSettingModel.h"

@implementation LWSettingRequest

- (BOOL)fetchSettingDataWithCompletion:(void (^)(NSArray<LWSettingModel *> *))completion {
    sleep(3);
    // Create testing data.
    LWSettingModel *model1 = [[LWSettingModel alloc] init];
    model1.name = @"WLAN";
    model1.status = 1;
    
    LWSettingModel *model2 = [[LWSettingModel alloc] init];
    model2.name = @"Bluetooth";
    model2.status = 0;
    
    LWSettingModel *model3 = [[LWSettingModel alloc] init];
    model3.name = @"Personal Hotspot";
    model3.status = 0;
    
    LWSettingModel *model4 = [[LWSettingModel alloc] init];
    model4.name = @"Show Profile";
    model4.status = 1;
    
    LWSettingModel *model5 = [[LWSettingModel alloc] init];
    model5.name = @"Notifications";
    model5.status = 1;
    
    NSArray *datas = @[model1, model2, model3, model4, model5];
    if (completion) {
        completion(datas);
    }
    return YES;
}

@end
