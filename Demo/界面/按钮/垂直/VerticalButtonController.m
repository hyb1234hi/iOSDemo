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
   
  
    [self addAutoSizeButton];
    
}

//高宽自适应
- (void)addAutoSizeButton{

    NSString *str = @"这是按钮的标题这\n1这是按钮";
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.titleLabel.font = [UIFont systemFontOfSize:13.0];
    //对按钮的外形做了设定，不喜可删~
    btn.layer.masksToBounds = YES;
    btn.layer.borderWidth = 1;
    btn.layer.borderColor = [[UIColor blackColor] CGColor];
    btn.layer.cornerRadius = 3;
    
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitle:str forState:UIControlStateNormal];
    
    btn.titleLabel.numberOfLines = 0;
    //重要的是下面这部分哦！
    CGSize titleSize = [str sizeWithAttributes:@{NSFontAttributeName: [UIFont fontWithName:btn.titleLabel.font.fontName size:btn.titleLabel.font.pointSize]}];
     
    
    titleSize.height += 20;
    titleSize.width += 20;
    
    btn.frame = CGRectMake(100, 100, titleSize.width, titleSize.height);
    [self.view addSubview:btn];
    
    
}

//添加多个按钮布局
- (void)addMultiButtons{
    
    //    图片组数
    NSArray *imgAry = @[@"直播",@"视频"];
    //    文字数字
    NSArray *titleAry = @[@"直播",@"视频111111111111111111111"];
    
    NSMutableArray *tolAry = [NSMutableArray new];
    
    NSUInteger height = (titleAry.count+1)*20 + 60*titleAry.count;
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 20, 110, height)];
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view];
    
    NSString *str = @"这是按钮的标题";
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.titleLabel.font = [UIFont systemFontOfSize:13.0];
    //对按钮的外形做了设定，不喜可删~
    btn.layer.masksToBounds = YES;
    btn.layer.borderWidth = 1;
    btn.layer.borderColor = [[UIColor blackColor] CGColor];
    btn.layer.cornerRadius = 3;
    
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitle:str forState:UIControlStateNormal];
    
    //重要的是下面这部分哦！
    CGSize titleSize = [str sizeWithAttributes:@{NSFontAttributeName: [UIFont fontWithName:btn.titleLabel.font.fontName size:btn.titleLabel.font.pointSize]}];
    
    titleSize.height = 20;
    titleSize.width += 20;
    
    btn.frame = CGRectMake(100, 100, titleSize.width, titleSize.height);
    [view addSubview:btn];
    
    
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
