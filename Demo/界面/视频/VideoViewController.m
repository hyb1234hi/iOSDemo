//
//  VideoViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/3/7.
//  Copyright © 2019年 test. All rights reserved.
//

#import "VideoViewController.h"
#import "JANPlayerView.h"

@interface VideoViewController ()

@end

@implementation VideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    JANPlayerView *view = [[JANPlayerView alloc] initWithFrame:CGRectMake(0, 0, kWindowWidth, kWindowHeight)];
    [view playWithUrl:[NSURL URLWithString:@"http://112.253.22.163/9/q/t/a/a/qtaajsmaeqcuukhzihzzlxtqxoootx/he.yinyuetai.com/080A01550943F9C13EED24FBF1933A39.flv?sc=aabb162ef563e9b2&br=3106&rd=iOS"]];
    [self.view addSubview:view];
    
}



@end
