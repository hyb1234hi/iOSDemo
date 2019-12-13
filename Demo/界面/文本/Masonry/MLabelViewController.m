//
//  MLabelViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/12/13.
//  Copyright © 2019 test. All rights reserved.
//

#import "MLabelViewController.h"

@implementation MLabelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self addLabelVertical];
}

- (void)addLabelVertical{
    
    NSArray *titleAry = @[@"高额",@"低息",@"灵活",@"便捷"];
    
    
    NSMutableArray *tolAry = [NSMutableArray new];
    
    NSMutableArray *tolAry2 = [NSMutableArray new];
    
    for (int i = 0; i < 4; i ++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:titleAry[i] forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:13];
        btn.imageEdgeInsets = UIEdgeInsetsMake(30, 30, 30, 30);
        [self.view addSubview:btn];
        [tolAry addObject:btn];
    }
    
    [tolAry mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedSpacing:20 leadSpacing:10 tailSpacing:10];
    [tolAry mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@20);
        make.height.equalTo(@100);
    }];
    
    for (int i = 0; i < 4; i ++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:titleAry[i] forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:13];
        btn.imageEdgeInsets = UIEdgeInsetsMake(30, 30, 30, 30);
        [self.view addSubview:btn];
        [tolAry2 addObject:btn];
    }
    [tolAry2 mas_distributeViewsAlongAxis:MASAxisTypeVertical withFixedSpacing:10 leadSpacing:10 tailSpacing:10];
    
    [tolAry2 mas_makeConstraints:^(MASConstraintMaker *make) {
        //垂直方向可以设置水平居中
        make.left.mas_equalTo(5);
        make.width.equalTo(@30);
    }];
    
    
    
}

@end
