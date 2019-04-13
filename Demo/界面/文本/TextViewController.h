//
//  TextViewController.h
//  Demo
//
//  Created by 王敏欣 on 2019/1/17.
//  Copyright © 2019年 test. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"

@interface TextViewController : RootViewController
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UIButton *btnSex;

@end
