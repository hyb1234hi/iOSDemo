//
//  LifecycleViewController.h
//  Demo
//
//  Created by 王敏欣 on 2019/1/22.
//  Copyright © 2019年 test. All rights reserved.
//

#import "RootViewController.h"

@interface LifecycleViewController : RootViewController
@property (weak, nonatomic) IBOutlet UIButton *btnClose;
@property (assign) int type;
- (IBAction)btnCloseClick:(id)sender;
- (IBAction)btnRefreshView:(id)sender;
- (IBAction)btnRefreshDraw:(id)sender;


@end
