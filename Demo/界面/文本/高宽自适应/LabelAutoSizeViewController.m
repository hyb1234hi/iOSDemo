//
//  LabelAutoSizeViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/12/14.
//  Copyright © 2019 test. All rights reserved.
//

#import "LabelAutoSizeViewController.h"
#import "MyLabel.h"

@interface LabelAutoSizeViewController ()

@end

@implementation LabelAutoSizeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self buildLabelOne];
    // Do any additional setup after loading the view.
}

- (void)buildLabelOne
{
    
    UIFont* font = [UIFont systemFontOfSize:14.f];
    NSMutableParagraphStyle* style = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    style.lineBreakMode = NSLineBreakByCharWrapping;
    NSMutableDictionary* textAttributes = [NSMutableDictionary dictionaryWithObjectsAndKeys:font, NSFontAttributeName
                                           , style, NSParagraphStyleAttributeName
                                           , [UIColor blackColor], NSForegroundColorAttributeName, nil];
    
    MyLabel *labelOne = [[MyLabel alloc] initWithFrame:CGRectMake(10, 30, 180, 50)];
    labelOne.attributedText = [[NSAttributedString alloc] initWithString:@"丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁丁wwwwwwwwwwwwwwww丁" attributes:textAttributes];
    
    
//    labelOne.textContainerInset = UIEdgeInsetsMake(10, 10, 10, 10);

//    labelOne.text = @"这是labelOne的高度自适应这是labelOne的高度自适应这是labelOne的高度自适应这是labelOne的高度自适应";
    labelOne.backgroundColor = [UIColor grayColor];
    labelOne.font = [UIFont systemFontOfSize:20];
    labelOne.numberOfLines = 0;
    CGFloat height = [self getHeightByWidth:labelOne.frame.size.width title:labelOne.text font:labelOne.font];
    labelOne.frame = CGRectMake(10, 30, 180, height);
    [self.view addSubview:labelOne];
    
}

- (CGFloat)getHeightByWidth:(CGFloat)width title:(NSString *)title font:(UIFont *)font
{
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, 0)];
    label.text = title;
    label.font = font;
    label.numberOfLines = 0;
    [label sizeToFit];
    CGFloat height = label.frame.size.height;
    return height;
}

- (CGFloat)getWidthWithTitle:(NSString *)title font:(UIFont *)font {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 1000, 0)];
    label.text = title;
    label.font = font;
    [label sizeToFit];
    return label.frame.size.width;
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
