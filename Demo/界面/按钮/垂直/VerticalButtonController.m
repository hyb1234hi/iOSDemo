//
//  VerticalButtonController.m
//  Demo
//
//  Created by 王敏欣 on 2019/12/14.
//  Copyright © 2019 test. All rights reserved.
//

#import "VerticalButtonController.h"
#import "HTVerticalButton.h"

@implementation VerticalButtonController


- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    //    图片组数
    NSArray *imgAry = @[@"直播",@"视频"];
    //    文字数字
    NSArray *titleAry = @[@"直播",@"视频"];
    
    NSMutableArray *tolAry = [NSMutableArray new];
    
    NSUInteger height = (titleAry.count+1)*20 + 60*titleAry.count;
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 20, 110, height)];
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view];
    
    
    for (int i = 0; i < 2; i ++) {
        HTVerticalButton *btn = [HTVerticalButton buttonWithType:UIButtonTypeCustom];
        [btn setImage:[UIImage imageNamed:imgAry[i]] forState:UIControlStateNormal];
        [btn setTitle:titleAry[i] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:13];
//        btn.titleEdgeInsets = UIEdgeInsetsMake(10, 10,10, 10);
//        btn.imageEdgeInsets = UIEdgeInsetsMake(30, 30,30, 30);
        btn.backgroundColor = [UIColor redColor];
        [view addSubview:btn];
        [tolAry addObject:btn];
    }
    
    
    
    //水平方向控件间隔固定等间隔
//    [tolAry mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedSpacing:20 leadSpacing:10 tailSpacing:10];
//    [tolAry mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(@20);
//        make.height.equalTo(@60);
//    }];
    
    //水平方向宽度固定等间隔
//    [tolAry mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedItemLength:70 leadSpacing:10 tailSpacing:10];
//    [tolAry mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(@75);
//        make.height.equalTo(@100);
//    }];
    
    [tolAry mas_distributeViewsAlongAxis:MASAxisTypeVertical withFixedSpacing:20 leadSpacing:20 tailSpacing:20];
    
    [tolAry mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(@5);
        //垂直方向可以设置水平居中
        make.width.equalTo(@100);
        
    }];
    
    
    
}

@end
