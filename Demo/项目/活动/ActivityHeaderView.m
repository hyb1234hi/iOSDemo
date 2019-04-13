//
//  ActivityHeaderView.m
//  Demo
//
//  Created by 王敏欣 on 2019/3/18.
//  Copyright © 2019年 test. All rights reserved.
//

#import "ActivityHeaderView.h"

@implementation ActivityHeaderView{
    NSDictionary *_data;
}
- (instancetype)initWithFrame:(CGRect)frame andModel:(NSDictionary*)data
{
    self = [super initWithFrame:frame];
    if (self) {
        _data = data;
        [self setupView];
    }
    return self;
}

- (void)setupView{
     
    
    UIImageView *logoView = [[UIImageView alloc] init];
    logoView.contentMode = UIViewContentModeScaleAspectFit;
    [logoView setImage:[UIImage imageNamed:@""]];
    [self addSubview:logoView];
     
    UILabel *title = [[UILabel alloc] init];
    title.text = @"泰达三星之夜交流活动";
    title.textColor = [UIColor whiteColor];
    title.font =  [UIFont systemFontOfSize:16];
    [self addSubview:title];
    
    UIView *rewardWrapView = [[UIView alloc] init];
    [self addSubview:rewardWrapView];
    
    UILabel *leftAmountTitle=[[UILabel alloc] init];
    [rewardWrapView addSubview:leftAmountTitle];
    leftAmountTitle.textColor = [UIColor whiteColor];
    leftAmountTitle.text  = @"目前剩余奖金";
    leftAmountTitle.font = [UIFont systemFontOfSize:12];
    
    UILabel *leftAmount=[[UILabel alloc] init];
    [rewardWrapView addSubview:leftAmount];
    leftAmount.text  = @"8.5 万元";
    leftAmount.font = [UIFont systemFontOfSize:12];
    leftAmount.textColor = RGB_COLOR(@"#FFCC00", 1);
    
    UILabel *totalAmountTitle = [[UILabel alloc] init];
    [rewardWrapView addSubview:totalAmountTitle];
    totalAmountTitle.textColor = [UIColor whiteColor];
    totalAmountTitle.font = [UIFont systemFontOfSize:12];
    totalAmountTitle.text = @"总奖金";
    totalAmountTitle.textAlignment = NSTextAlignmentRight;
    
    UILabel *totalAmount=[[UILabel alloc] init];
    [rewardWrapView addSubview:totalAmount];
    totalAmount.text  = @"10 万元";
    totalAmount.font = [UIFont systemFontOfSize:12];
    totalAmount.textColor = RGB_COLOR(@"#FFCC00", 1);
    totalAmount.textAlignment = NSTextAlignmentRight;
    
    UIProgressView *process = [[UIProgressView alloc] initWithProgressViewStyle:UIProgressViewStyleDefault];
    [rewardWrapView addSubview:process];
    process.progressTintColor = RGB_COLOR(@"#FFCC00", 1);
    process.trackTintColor = [UIColor whiteColor];
    process.progress = 0.7;
    
    UITextView *description = [[UITextView alloc] init];
    [self addSubview:process];
    description.editable = NO;
    description.font = [UIFont systemFontOfSize:12];
    description.text = @"百度（纳斯达克：BIDU），全球最大的中文搜索引擎、最大的中文网站。百度愿景是：成为最懂用户，并能帮助人们成长的全球顶级高科技公司。“百度”二字，来自于八百年前南宋词人辛弃疾的一句词：众";
    [self addSubview:description];
    
    [logoView mas_updateConstraints:^(MASConstraintMaker *make) {
         make.width.height.mas_equalTo(120);
         make.left.mas_equalTo(10);
         make.top.mas_equalTo(10);
    }];
    
    [title mas_updateConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(logoView.mas_right).offset(10);
        make.top.equalTo(logoView).offset(15);
        make.width.lessThanOrEqualTo(self).offset(-50);
        make.height.mas_equalTo(20);
    }];
    
    [rewardWrapView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(50);
        make.bottom.equalTo(logoView).offset(-10);
        make.left.equalTo(logoView.mas_right).offset(10);
        make.right.equalTo(self.mas_right).offset(-15);
    }];
    
    
    [leftAmountTitle mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(rewardWrapView).multipliedBy(0.3);
        make.width.equalTo(rewardWrapView).multipliedBy(0.5);
        make.top.equalTo(rewardWrapView);
        make.left.equalTo(rewardWrapView);
    }];
    
    [leftAmount mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(rewardWrapView).multipliedBy(0.3);
        make.width.equalTo(rewardWrapView).multipliedBy(0.5);
        make.top.equalTo(leftAmountTitle.mas_bottom);
        make.left.equalTo(rewardWrapView);
    }];
    
    [totalAmountTitle mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(rewardWrapView).multipliedBy(0.3);
        make.width.equalTo(rewardWrapView).multipliedBy(0.5);
        make.top.equalTo(rewardWrapView);
        make.right.equalTo(rewardWrapView);
    }];
    
    [totalAmount mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(rewardWrapView).multipliedBy(0.3);
        make.width.equalTo(rewardWrapView).multipliedBy(0.5);
        make.top.equalTo(totalAmountTitle.mas_bottom);
        make.right.equalTo(rewardWrapView);
    }];
    
    [process mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(5);
        make.width.equalTo(rewardWrapView);
        make.top.equalTo(totalAmount.mas_bottom).offset(5);
        make.left.equalTo(rewardWrapView);
    }];
    
    [description mas_updateConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(logoView);
        make.right.equalTo(self).offset(-15);
        make.top.mas_equalTo(logoView.mas_bottom).offset(10);
        make.height.mas_equalTo(40);
    }];
    
}

@end
