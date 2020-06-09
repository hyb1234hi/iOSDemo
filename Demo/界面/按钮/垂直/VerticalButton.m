//
//  VerticalButton.m
//  Demo
//
//  Created by 王敏欣 on 2020/6/9.
//  Copyright © 2020 test. All rights reserved.
//

#import "VerticalButton.h"

@implementation VerticalButton

-(void)layoutSubviews {
    [super layoutSubviews];

    // Center image
    CGPoint center = self.imageView.center;
    center.x = self.frame.size.width/2;
    center.y = self.imageView.frame.size.height/2;
    self.imageView.center = center;

    //Center text
    CGRect newFrame = [self titleLabel].frame;
    newFrame.origin.x = 0;
    newFrame.origin.y = self.imageView.frame.size.height + 5;
    newFrame.size.width = self.frame.size.width;

    self.titleLabel.frame = newFrame;
    self.titleLabel.textAlignment = UITextAlignmentCenter;
}

@end
