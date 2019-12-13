//
//  DialogViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/3/6.
//  Copyright © 2019年 test. All rights reserved.
//

#import "LabelViewController.h"
#import "Masonry.h"
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface LabelViewController ()

@end

@implementation LabelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //[self addInviteDialog];
//    [self addLabelVertical1];
    [self addLabelVertical2];
}


//高度自适应
- (void)addLabelVertical1 {
    
    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectZero];
    
    [self.view addSubview:label3];
    
    label3.backgroundColor =[UIColor redColor];
    
    label3.text =@"我爱北京天安门";
    
    label3.preferredMaxLayoutWidth = (self.view.frame.size.width -10.0 * 2);
    
    [label3 setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
    
    label3.numberOfLines =0;
    
    [label3 mas_makeConstraints:^(MASConstraintMaker *make) {
        
             make.left.mas_equalTo(10.0);
                    
             make.right.mas_equalTo(-10.0);
        
             make.top.mas_equalTo(100.0);
        
     }];
    
    
}

//高度自适应
- (void)addLabelVertical2 {
    
    UILabel * attentionLbl = [[UILabel alloc] init];
    attentionLbl.backgroundColor = [UIColor redColor];
    attentionLbl.font = [UIFont systemFontOfSize:17];
    attentionLbl.textColor = [UIColor colorWithRed:255 / 255.0 green:255 / 255.0 blue:255 / 255.0 alpha:1];
    attentionLbl.text = @"关注11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
    
    CGFloat attentionX = 0;
    
    CGFloat attentionY = 20;
    
    NSMutableDictionary * attentionDic = [NSMutableDictionary dictionary];
    
    attentionDic[NSFontAttributeName] = [UIFont systemFontOfSize:17];
    
    CGSize attentionSize = [attentionLbl.text sizeWithAttributes:attentionDic];
    
    attentionLbl.frame = (CGRect){{attentionX, attentionY},attentionSize};
    
    [self.view addSubview:attentionLbl];

}

- (void)addButton{
    
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
