//
//  TextViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/1/17.
//  Copyright © 2019年 test. All rights reserved.
//

#import "TextViewController.h"

@interface TextViewController ()

@end

@implementation TextViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    NSString *textString = @"1000人";
    NSMutableAttributedString *str3 = [[NSMutableAttributedString alloc] initWithString:textString attributes:@{NSForegroundColorAttributeName:[UIColor blueColor]}];
    [str3 addAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:28 weight:UIFontWeightMedium]} range:NSMakeRange(0, textString.length-1)];
    [str3 addAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12 weight:UIFontWeightMedium]} range:NSMakeRange(textString.length-1, 1)];
    
    _lblName.attributedText = str3;
    
    [_btnSex setTitle:@"女" forState:0];
    [_btnSex setImage:[UIImage imageNamed:@"个人中心-性别女图标-默认"] forState:0];
    [_btnSex setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 5)];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
