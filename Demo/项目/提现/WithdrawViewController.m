//
//  WithdrawViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/3/16.
//  Copyright © 2019年 test. All rights reserved.
//

#import "WithdrawViewController.h"

@interface WithdrawViewController()

@property(nonatomic,strong) UILabel *lblTitle;
@property(nonatomic,strong) UILabel *lblAmount;

@property(nonatomic,strong) UIView *amountWrapView;
@property(nonatomic,strong) UILabel *lblAmountTip;
@property(nonatomic,strong) UITextField *tfAmount;
@property(nonatomic,strong) UIView *accountWrapView;
@property(nonatomic,strong) UILabel *lblAccountTip;
@property(nonatomic,strong) UIButton *btnAccount;

@property(nonatomic,strong) UIButton *btnWithdraw;
@end
@implementation WithdrawViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    [self  addContentView];
}

- (void)addContentView{
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyBoard)];
    [self.view addGestureRecognizer:tap];
    
    
    _lblTitle = [[UILabel alloc] init];
    _lblTitle.text= @"奖励金额";
    _lblTitle.font = [UIFont systemFontOfSize:18];
    [self.view addSubview:_lblTitle];
    
    _lblAmount = [[UILabel alloc] init];
    _lblAmount.text= @"2100.00元";
    _lblAmount.font = [UIFont systemFontOfSize:18];
    [self.view addSubview:_lblAmount];
    
    _amountWrapView= [[UIView alloc] init];
    [self.view addSubview:_amountWrapView];
    _lblAmountTip = [[UILabel alloc] init];
    _lblAmountTip.text = @"输入提现金额";
    [_amountWrapView addSubview:_lblAmountTip];
    _tfAmount = [[UITextField alloc] init];
    _tfAmount.placeholder = @"0";
    _tfAmount.layer.borderWidth = 1;
    _tfAmount.layer.borderColor = [[UIColor lightGrayColor] CGColor];
    [_amountWrapView addSubview:_tfAmount];
    
    
    _accountWrapView= [[UIView alloc] init];
    [self.view addSubview:_accountWrapView];
    _lblAccountTip = [[UILabel alloc] init];
    _lblAccountTip.text = @"请选择提现账户";
    [_accountWrapView addSubview:_lblAccountTip];
    
    _btnWithdraw = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnWithdraw.backgroundColor = RGB_COLOR(@"#555267", 1);
    _btnWithdraw.titleLabel.textColor = RGB_COLOR(@"#ADA8A8", 1);
    _btnWithdraw.titleLabel.font = [UIFont systemFontOfSize:12];
    _btnWithdraw.layer.cornerRadius = 20;
    _btnWithdraw.layer.masksToBounds = YES;
    [_btnWithdraw setTitle:@"立即提现" forState:UIControlStateNormal];
    [_btnWithdraw addTarget:self action:@selector(clickBtnWithdraw) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_btnWithdraw];
    
    [_lblTitle mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(20);
        make.top.equalTo(self.view).offset(100);
        make.centerX.equalTo(self.view);
    }];
    
    [_lblAmount mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(30);
        make.top.equalTo(_lblTitle.mas_bottom).offset(30);
        make.centerX.equalTo(self.view);
    }];
    
    [_amountWrapView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.view).multipliedBy(0.8);
        make.height.mas_equalTo(80);
        make.top.equalTo(_lblAmount.mas_bottom).offset(50);
        make.centerX.equalTo(self.view);
    }];
    
    [_lblAmountTip mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(135);
        make.height.mas_equalTo(22);
        make.centerY.equalTo(_amountWrapView);
        make.left.equalTo(_amountWrapView);
    }];
    
    [_tfAmount mas_updateConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_lblAmountTip.mas_right).offset(5);
        make.right.equalTo(_amountWrapView).offset(-5);
        make.height.mas_equalTo(30);
        make.centerY.equalTo(_amountWrapView);
    }];
    
    [_accountWrapView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.view).multipliedBy(0.8);
        make.height.mas_equalTo(80);
        make.top.equalTo(_amountWrapView.mas_bottom).offset(5);
        make.centerX.equalTo(self.view);
    }];
    
    [_lblAccountTip mas_updateConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_accountWrapView);
        make.right.equalTo(_accountWrapView).offset(-5);
        make.height.mas_equalTo(22);
        make.centerY.equalTo(_accountWrapView);
    }];
    
    [_btnWithdraw mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(230);
        make.height.mas_equalTo(40);
        make.top.equalTo(_accountWrapView.mas_bottom).offset(50);
        make.centerX.equalTo(self.view);
    }];
    
}

- (void)hideKeyBoard{
    [self.view endEditing:YES];
}

- (void)clickBtnWithdraw{
    
    
}

@end
