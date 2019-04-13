//
//  SegmentViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/2/27.
//  Copyright © 2019年 test. All rights reserved.
//

#import "SegmentViewController.h"

@interface SegmentViewController ()

@end

@implementation SegmentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addSegmentedControl];
}

- (UIImage *)createImageWithColor:(UIColor *)color
{
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

- (void)addSegmentedControl{
    
    UISegmentedControl *segControl = [[UISegmentedControl alloc] initWithFrame:CGRectMake(100, 200, 90 , 25)];
    
    segControl.tintColor = [UIColor clearColor];
    segControl.layer.cornerRadius = segControl.frame.size.height/2;
    segControl.layer.masksToBounds = YES;
    segControl.layer.borderWidth=1;
    segControl.layer.borderColor = [UIColor grayColor].CGColor;
    UIImage *imgGray = [self createImageWithColor:[UIColor grayColor]];
    [segControl setDividerImage:imgGray
                                 forLeftSegmentState:UIControlStateNormal
                                   rightSegmentState:UIControlStateNormal
                                          barMetrics:UIBarMetricsDefault];
    [segControl setDividerImage:imgGray
                                 forLeftSegmentState:UIControlStateSelected
                                   rightSegmentState:UIControlStateNormal
                                          barMetrics:UIBarMetricsDefault];
    [segControl setDividerImage:imgGray
                                 forLeftSegmentState:UIControlStateNormal
                                   rightSegmentState:UIControlStateSelected
                                          barMetrics:UIBarMetricsDefault];
    NSDictionary* selectedTextAttributes = @{NSFontAttributeName:[UIFont boldSystemFontOfSize:12],
                                            NSForegroundColorAttributeName: [UIColor redColor]};
    [segControl setTitleTextAttributes:selectedTextAttributes forState:UIControlStateSelected];//选中色
    
    NSDictionary* unselectedTextAttributes = @{NSFontAttributeName:[UIFont boldSystemFontOfSize:12],
                                  NSForegroundColorAttributeName: [UIColor grayColor]};
    [segControl setTitleTextAttributes:unselectedTextAttributes forState:UIControlStateNormal]; //未选中
    [segControl insertSegmentWithTitle:@"免费" atIndex:0 animated:YES];
    [segControl insertSegmentWithTitle:@"收费" atIndex:1 animated:YES];
    segControl.selectedSegmentIndex = 0;
    [segControl addTarget:self
                         action:@selector(segmentAction:)
               forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:segControl];
    
}

-(void)segmentAction:(UISegmentedControl *)Seg
{
    NSInteger index = Seg.selectedSegmentIndex;
    NSLog(@"click------------------->%ld",index);
}


@end
