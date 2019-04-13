//
//  ZZFlexViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/1/17.
//  Copyright © 2019年 test. All rights reserved.
//

#import "ZZFlexViewController.h"
#import <MJRefresh/MJRefresh.h>
#import "UIView+ZZFLEX.h"
#import "UIButton+ZZExtension.h"
#import "Masonry.h"
#import <UIKit/UIKit.h>

@interface ZZFlexViewController ()

@end

@implementation ZZFlexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = self.view.addButton(1001)
    .title(@"确定").masonry(^ (MASConstraintMaker *make) {
        make.center.mas_equalTo(0);
        make.size.mas_equalTo(CGSizeMake(100, 30));
    })
    .view;
    
    NSLog(@"%@",btn.titleLabel.text);
    
    NSLog(@"%@",kValue);
    
    //UIButton.creatButton.titl(@"测试");
    
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
