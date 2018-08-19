//
//  LWSwitchSettingTableViewCell.m
//  MVVMPracticeDemo
//
//  Created by wuleslie on 2018/8/12.
//  Copyright © 2018 Leslie Studio. All rights reserved.
//

#import "LWSwitchSettingTableViewCell.h"
#import "LWSwitchCellViewModel.h"
#import <Masonry/Masonry.h>

@interface LWSwitchSettingTableViewCell ()

@property (nonatomic, strong) UISwitch *statusSwitch;
@property (nonatomic, strong) LWSwitchCellViewModel *viewModel;

@end

@implementation LWSwitchSettingTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.accessoryType = UITableViewCellAccessoryNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self.contentView addSubview:self.statusSwitch];
        [self setupLayout];
    }
    return self;
}

- (void)setupLayout {
    [self.statusSwitch mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-16);
        make.centerY.equalTo(self.contentView);
    }];
}


- (void)statusDidChange {
    [self.viewModel updateSettingStatus:self.statusSwitch.isOn];
}

- (UISwitch *)statusSwitch {
    if (!_statusSwitch) {
        _statusSwitch = [[UISwitch alloc] init];
        [_statusSwitch addTarget:self action:@selector(statusDidChange) forControlEvents:UIControlEventValueChanged];
    }
    return _statusSwitch;
}

- (void)updateWithCellModel:(LWSwitchCellViewModel *)viewModel {
    self.viewModel = viewModel;
    self.textLabel.text = self.viewModel.leftText;
    self.statusSwitch.on = self.viewModel.isConcerned;
}


@end
