//
//  LocalizedViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/1/26.
//  Copyright © 2019年 test. All rights reserved.
//

#import "LocalizedViewController.h"

@interface LocalizedViewController ()

@end

@implementation LocalizedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *ok = NSLocalizedString(@"确定", nil);
    [_btnOK setTitle:ok forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
