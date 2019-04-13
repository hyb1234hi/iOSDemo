//
//  ObjectCViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/1/17.
//  Copyright © 2019年 test. All rights reserved.
//

#import "ObjectCViewController.h"

@interface ObjectCViewController ()

@end

@implementation ObjectCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *dic =@{};
    
    NSLog(@"------------------->%@",dic);
    
    NSString *text = [dic valueForKey:@"text"];
    
    NSLog(@"------------------->%@",text);
    
    // Do any additional setup after loading the view from its nib.
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
