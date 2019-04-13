//
//  MainViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/1/23.
//  Copyright © 2019年 test. All rights reserved.
//

#import "MainViewController.h"
#import "LifecycleViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


- (void)presentTranslationShow
{
    LifecycleViewController *lifecycle = [LifecycleViewController alloc];
    NSLog(@"presentTranslationShow--------------------->alloc");
    lifecycle  = [lifecycle init];
    NSLog(@"presentTranslationShow--------------------->init");
    [self presentViewController:lifecycle animated:NO completion:nil];
    NSLog(@"presentTranslationShow--------------------->");
}

- (void)presentShow
{
    LifecycleViewController *lifecycle = [LifecycleViewController alloc];
    NSLog(@"presentShow--------------------->alloc");
    lifecycle  = [lifecycle init];
    NSLog(@"presentShow--------------------->init");
    [self presentViewController:lifecycle animated:NO completion:nil];
    NSLog(@"presentShow--------------------->");
}

- (void)naviShow
{
    LifecycleViewController *lifecycle = [LifecycleViewController alloc];
    NSLog(@"naviShow--------------------->alloc");
    lifecycle  = [lifecycle init];
    NSLog(@"naviShow--------------------->init");
    [self.navigationController pushViewController:lifecycle animated:YES];
    NSLog(@"naviShow--------------------->");
}



- (void)viewDidLoad {
    [super viewDidLoad];
    //    [self.btnClose addTarget:self action:@selector(close:) forControlEvents:UIControlEventTouchUpInside];
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

- (IBAction)btnShow1:(id)sender {
    [self presentShow];
}

- (IBAction)btnShow2:(id)sender {
    [self presentTranslationShow];
}

- (IBAction)btnShow3:(id)sender {
    [self naviShow];
}
@end
