//
//  LWSettingViewModel.m
//  MVVMPracticeDemo
//
//  Created by wuleslie on 2018/8/12.
//  Copyright © 2018 Leslie Studio. All rights reserved.
//

#import "LWSettingViewModel.h"
#import "LWSwitchCellViewModel.h"
#import "LWSettingModel.h"
#import "LWSettingRequest.h"

@interface LWSettingViewModel ()

@property (nonatomic, strong) NSArray <LWSwitchCellViewModel*> *cellViewModelList;
@property (nonatomic, strong) RACCommand *fetchCommand;

@end

@implementation LWSettingViewModel

- (id)init {
    self = [super init];
    if (self) {
        @weakify(self);
        self.fetchCommand = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
            return [RACSignal startLazilyWithScheduler:[RACScheduler scheduler] block:^(id<RACSubscriber> subscriber) {
                @strongify(self);
                LWSettingRequest *request = [[LWSettingRequest alloc] init];
                [request fetchSettingDataWithCompletion:^(NSArray<LWSettingModel *> *modelList) {
                    [self generateCellViewModelsFromModelList: modelList];
                }];
                [subscriber sendNext:nil];
            }];
        }];
    }
    return self;
}

- (void)generateCellViewModelsFromModelList:(NSArray <LWSettingModel *>*)modelList {
    NSMutableArray *cellViewModels = [NSMutableArray array];
    [modelList enumerateObjectsUsingBlock:^(LWSettingModel * obj, NSUInteger idx, BOOL * _Nonnull stop) {
        LWSwitchCellViewModel *viewModel = [[LWSwitchCellViewModel alloc] initWithBaseModel:obj];
        [cellViewModels addObject:viewModel];
        [[RACObserve(viewModel, isConcerned) skip:1] subscribeNext:^(id  _Nullable x) {
            NSLog(@"The viewModel has changed: %@", [viewModel description]);
        }];
    }];
    self.cellViewModelList = cellViewModels.copy;
}

@end
