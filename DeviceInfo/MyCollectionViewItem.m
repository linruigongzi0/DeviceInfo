//
//  MyCollectionViewItem.m
//  DeviceInfo
//
//  Created by Reason Lee on 2018/5/22.
//  Copyright © 2018 Reason Lee. All rights reserved.
//

#import "MyCollectionViewItem.h"
#import <Masonry.h>

@implementation MyCollectionViewItem

- (instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.nameLabel];
        [self addSubview:self.iconImageView];
    }
    
    return self;
}

- (void)layoutSubviews
{
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.mas_bottom).offset(-29);
        make.centerX.equalTo(self);
    }];
    
    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self).offset(-15);
        make.centerX.equalTo(self);
        make.height.and.with.mas_equalTo(23);
    }];
}

- (UILabel *)nameLabel
{
    if(!_nameLabel) {
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.backgroundColor = [UIColor redColor];
        _nameLabel.text = @"公信宝";
    }
    
    return _nameLabel;
}

- (UIImageView *)iconImageView
{
    if(!_iconImageView) {
        _iconImageView = [[UIImageView alloc] init];
        _iconImageView.backgroundColor = [UIColor yellowColor];
        _iconImageView.image = [UIImage imageNamed:@"gxs"];
    }
    
    return _iconImageView;
}

@end
