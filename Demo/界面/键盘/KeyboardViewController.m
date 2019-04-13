//
//  KeyboardViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/1/23.
//  Copyright © 2019年 test. All rights reserved.
//

#import "KeyboardViewController.h"

@interface KeyboardViewController ()

@end

@implementation KeyboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillChangeFrame:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillChangeFrame:) name:UIKeyboardWillHideNotification object:nil];
    
}

- (void)keyboardWillChangeFrame:(NSNotification*)notify{
    
    //获取键盘高度
    NSDictionary *info = [notify userInfo];
    
    //获取动画时间
    float duration = [[info objectForKey:UIKeyboardAnimationDurationUserInfoKey] floatValue];
    
    //获取动画开始状态的fram
    CGRect beginRect = [[info objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue];
    
    //获取动画结束状态的fram
    CGRect endRect = [[info objectForKey:UIKeyboardFrameEndUserInfoKey]CGRectValue];
    
    //计算高度差
    float offsety = endRect.origin.y - beginRect.origin.y ;
    
    //下面的动画，你可以让整个View上移动，或者让控件上移
    CGRect fileRect = self.view.frame;
    
    fileRect.origin.y += offsety;
    
    [UIView animateWithDuration:duration animations:^{
        
        self.view.frame = fileRect;
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)dealloc{
   
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
