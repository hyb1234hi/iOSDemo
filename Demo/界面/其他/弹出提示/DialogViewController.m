//
//  DialogViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/3/6.
//  Copyright © 2019年 test. All rights reserved.
//

#import "DialogViewController.h"
#import "Masonry.h"
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface DialogViewController ()

@end

@implementation DialogViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //[self addInviteDialog];
    [self addNoticeDialog];
}

- (void)addInviteDialog {
    UIView *inviteWrapView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kWindowWidth, kWindowHeight)];
    [self.view addSubview:inviteWrapView];
    
    UIView* inviteView = [[UIView alloc] init];
    inviteView.layer.cornerRadius = 10;
    inviteView.layer.masksToBounds = YES;
    inviteView.backgroundColor = [UIColor whiteColor];
    [inviteWrapView addSubview:inviteView];
    [inviteView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(@220);
        make.height.mas_equalTo(@300);
        make.centerX.centerY.equalTo(inviteWrapView);
    }];
    
    UIImageView *imgTop = [[UIImageView alloc] init];
    //imgTop.backgroundColor=[UIColor redColor];
    [imgTop setImage:[UIImage imageNamed:@"邀请码-标题"]];
    imgTop.clipsToBounds = YES;
    imgTop.contentMode =   UIViewContentModeScaleToFill ;
    [inviteWrapView addSubview:imgTop];
    [imgTop mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(inviteView);
        make.height.equalTo(imgTop.mas_width).multipliedBy(0.7);
        make.top.equalTo(inviteView).offset(-40);
        make.centerX.equalTo(inviteView);
    }];
     
    UITextField *tfCode = [[UITextField alloc] init];
    tfCode.layer.borderColor = [[UIColor lightGrayColor] CGColor];
    tfCode.layer.borderWidth = 1;
    [inviteView addSubview:tfCode];
    [tfCode mas_makeConstraints:^(MASConstraintMaker *make) {
        //make.width.equalTo(inviteView).multipliedBy(0.8);
        make.width.equalTo(@150);
        make.height.equalTo(@30);
        make.centerX.equalTo(inviteView);
        make.centerY.equalTo(inviteView).multipliedBy(1.2);
    }];
    
    UIButton *btnOk = [[UIButton alloc] init];
    btnOk.titleLabel.font = [UIFont systemFontOfSize:14];
    btnOk.layer.cornerRadius =3;
    [btnOk setTitle:@"确定" forState:UIControlStateNormal];
    btnOk.backgroundColor = RGB_COLOR(@"#ffb600",1);
    [inviteView addSubview:btnOk];
    [btnOk mas_makeConstraints:^(MASConstraintMaker *make) {
        //make.width.equalTo(inviteView).multipliedBy(0.8);
        make.width.equalTo(@150);
        make.height.equalTo(@30);
        make.centerX.equalTo(inviteView);
        make.bottom.equalTo(inviteView).offset(-20);
    }];
   
}

- (void)addNoticeDialog {
    
    UIView *noticeWrapView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kWindowWidth, kWindowHeight)];
    [self.view addSubview:noticeWrapView];
    
    UIView *noticeView = [[UIView alloc] init];
    noticeView.backgroundColor = RGB_COLOR(@"#f3aefc",1);
    noticeView.layer.borderColor = [RGB_COLOR(@"#e9f83d",1) CGColor];
    noticeView.layer.borderWidth = 5;
    noticeView.layer.cornerRadius = 10;
    noticeView.layer.masksToBounds = YES;
    [noticeWrapView addSubview:noticeView];
    [noticeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(noticeWrapView.mas_width).multipliedBy(0.8);
        make.centerX.centerY.equalTo(noticeWrapView);
    }];
    
    UITextView *tvNotice = [[UITextView alloc] init];
    tvNotice.editable = NO;
    tvNotice.userInteractionEnabled =NO;
    tvNotice.backgroundColor = [UIColor clearColor];
    tvNotice.textColor = [UIColor whiteColor];
    tvNotice.font = [UIFont systemFontOfSize:14];
    tvNotice.text= @"请下载体验请下载体验请下载体验请下载体验请下载体验请下载体验请下载体验请下载体验请下载体验请下载体验请下载体验请下载体验请下载体验请下载体验请下载体验请下载体验请下载体验请下载体验请下载体验请下载体验请下载体验请下载体验请下载体验";
    [noticeView addSubview:tvNotice];
    [tvNotice mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(noticeView.mas_width).multipliedBy(0.9);
        make.height.equalTo(noticeView.mas_width).multipliedBy(0.7);
        make.top.equalTo(noticeView).offset(30);
        make.centerX.equalTo(noticeView);
    }];
    
//    UIView* roundedView = [[UIView alloc] initWithFrame: systemNoticeView.frame];
//    roundedView.layer.cornerRadius = 5.0;
//    roundedView.layer.masksToBounds = YES;
//
//    UIView* shadowView = [[UIView alloc] initWithFrame:  systemNoticeView.frame];
//    shadowView.layer.shadowColor = [UIColor blackColor].CGColor;
//    shadowView.layer.shadowRadius = 5.0;
//    shadowView.layer.shadowOffset = CGSizeMake(3.0, 3.0);
//    shadowView.layer.shadowOpacity = 1.0;
//    [shadowView addSubview: roundedView];
//    [systemNoticeView addSubview:shadowView];
    
    UIButton * btnTitle = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnTitle setTitle:@"公告板" forState:UIControlStateNormal];
    [btnTitle setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btnTitle.backgroundColor = RGB_COLOR(@"#e967f8",1);
    btnTitle.layer.borderColor = [RGB_COLOR(@"#e9f83d",1) CGColor];
    btnTitle.layer.borderWidth = 3;
    btnTitle.layer.cornerRadius = 15;
    btnTitle.layer.masksToBounds = YES;
    [noticeWrapView addSubview:btnTitle];
    [btnTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(@100);
        make.height.mas_equalTo(@40);
        make.centerX.equalTo(noticeView);
        make.top.equalTo(noticeView).offset(-20);
    }];
    
    UIButton * btnOk = [UIButton buttonWithType:UIButtonTypeCustom];
    [noticeView addSubview:btnOk];
    NSMutableAttributedString* tncString = [[NSMutableAttributedString alloc] initWithString:@"知晓并同意"];
    [tncString addAttribute:NSFontAttributeName
                      value:[UIFont systemFontOfSize:16]
                      range:(NSRange){0,[tncString length]}];
    [tncString addAttribute:NSForegroundColorAttributeName
                      value:[UIColor whiteColor]
                      range:(NSRange){0,[tncString length]}];
    [tncString addAttribute:NSUnderlineStyleAttributeName
                      value:@(NSUnderlineStyleSingle)
                      range:(NSRange){0,[tncString length]}];
    [btnOk setAttributedTitle:tncString forState:UIControlStateNormal];
    [btnOk mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(@100);
        make.height.mas_equalTo(@30);
        make.centerX.equalTo(noticeView);
        make.top.equalTo(tvNotice.mas_bottom).offset(10);
    }];
    
}

- (void)addButton{
    UIButton * button = [[UIButton alloc] initWithFrame:CGRectMake(20, 30, 150, 70)];
    [self.view addSubview:button];
    [button setTitle:@"button" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    button.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    // you probably want to center it
    button.titleLabel.textAlignment = NSTextAlignmentCenter; // if you want to
    button.layer.borderColor = [UIColor blackColor].CGColor;
    button.layer.borderWidth = 1.0;
    
    // underline Terms and condidtions
    NSMutableAttributedString* tncString = [[NSMutableAttributedString alloc] initWithString:@"View Terms and Conditions"];
    
    //设置下划线...
    /*
     NSUnderlineStyleNone                                    = 0x00, 无下划线
     NSUnderlineStyleSingle                                  = 0x01, 单行下划线
     NSUnderlineStyleThick NS_ENUM_AVAILABLE(10_0, 7_0)      = 0x02, 粗的下划线
     NSUnderlineStyleDouble NS_ENUM_AVAILABLE(10_0, 7_0)     = 0x09, 双下划线
     */
    [tncString addAttribute:NSUnderlineStyleAttributeName
                      value:@(NSUnderlineStyleSingle)
                      range:(NSRange){0,[tncString length]}];
    //此时如果设置字体颜色要这样
    [tncString addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor]  range:NSMakeRange(0,[tncString length])];
    
    //设置下划线颜色...
    [tncString addAttribute:NSUnderlineColorAttributeName value:[UIColor redColor] range:(NSRange){0,[tncString length]}];
    [button setAttributedTitle:tncString forState:UIControlStateNormal];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
