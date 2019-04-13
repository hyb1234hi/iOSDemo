//
//  ActivityViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/3/18.
//  Copyright © 2019年 test. All rights reserved.
//

#import "ActivityViewController.h"
#import "ActivityHeaderView.h"

@interface ActivityViewController ()

@end

@implementation ActivityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    [self addHeaderView];
}


- (void)addHeaderView {
    
    UIImageView* image = [[UIImageView alloc] initWithFrame:CGRectMake(20, 200, 200, 100)];
    
    UIImage *maskImage    = [UIImage imageNamed:@"sender_text_normal"];
    maskImage = [maskImage resizableImageWithCapInsets:UIEdgeInsetsMake(30, 20, 30, 20)];
    [image setImage:maskImage];
    
    [self.view addSubview:image];
    
//    CGRect rect = CGRectMake(0, 30, kWindowWidth, 180);
//    ActivityHeaderView *headerView = [[ActivityHeaderView alloc] initWithFrame:rect andModel:nil];
//    [self.view addSubview:headerView];
    
}


@end
