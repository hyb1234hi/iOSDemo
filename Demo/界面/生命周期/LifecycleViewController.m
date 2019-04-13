//
//  LifecycleViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/1/22.
//  Copyright © 2019年 test. All rights reserved.
//

#import "LifecycleViewController.h"

@interface LifecycleViewController ()

@end

@implementation LifecycleViewController

 
//- (void)loadView{
//    [super loadView];
//    NSLog(@"----------------------->loadView");
//}

- (void)updateViewConstraints{
    [super updateViewConstraints];
    NSLog(@"----------------------->updateViewConstraints");
}

- (void)loadViewIfNeeded{
    [super loadViewIfNeeded];
    NSLog(@"----------------------->loadViewIfNeeded");
}
 

- (void)close:(UIButton*)sender{
    //    [self.navigationController popViewControllerAnimated:YES];
    //    [self dismissViewControllerAnimated:YES completion:nil];
    exit(0);
}

- (void)setView:(UIView *)view{
    [super setView:view];
    NSLog(@"----------------------->setView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"----------------------->viewDidLoad");
}


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"----------------------->viewWillAppear");
}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    NSLog(@"----------------------->viewWillLayoutSubviews");
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog(@"----------------------->viewDidLayoutSubviews");
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"----------------------->viewDidAppear");
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"----------------------->viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"----------------------->viewDidDisappear");
}
 

- (void)dealloc{
    NSLog(@"----------------------->dealloc");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)drawRect:(CGRect)rect{
    
     NSLog(@"----------------------->drawRect");
    
}


- (IBAction)btnCloseClick:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)btnRefreshView:(id)sender {
    [self.view setNeedsLayout]; //标记布局
    [self.view layoutIfNeeded]; //立即布局
    
}

- (IBAction)btnRefreshDraw:(id)sender {
    [self.view setNeedsDisplay];
}
@end
