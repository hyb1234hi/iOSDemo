//
//  ScrollViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/1/24.
//  Copyright © 2019年 test. All rights reserved.
//

#import "ScrollViewController.h"

@interface ScrollViewController ()<UIScrollViewDelegate>
{
      UIScrollView *_scrollView;
}
@end

#define Count 3

@implementation ScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, kWindowWidth, kWindowHeight)];
    _scrollView.pagingEnabled = YES;
    
    _scrollView.contentSize = CGSizeMake(0, Count*kWindowHeight);
    _scrollView.showsVerticalScrollIndicator = NO;
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.delegate = self;
    
    UIView *view1 = [[UIView alloc ] initWithFrame:CGRectMake(0, 0, kWindowWidth, kWindowHeight)];
    view1.backgroundColor = [UIColor redColor];
    [_scrollView addSubview:view1];
    
    UIView *view2 = [[UIView alloc ] initWithFrame:CGRectMake(0, kWindowHeight, kWindowWidth, kWindowHeight)];
    view2.backgroundColor = [UIColor yellowColor];
    [_scrollView addSubview:view2];
    
    UIView *view3 = [[UIView alloc ] initWithFrame:CGRectMake(0, kWindowHeight*2, kWindowWidth, kWindowHeight)];
    view3.backgroundColor = [UIColor greenColor];
    [_scrollView addSubview:view3];
    
    [self.view addSubview:_scrollView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


//scrollView滚动时，就调用该方法。任何offset值改变都调用该方法。即滚动过程中，调用多次
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    NSLog(@"scrollViewDidScroll");
    CGPoint point=scrollView.contentOffset;
    NSLog(@"%f,%f",point.x,point.y);
    // 从中可以读取contentOffset属性以确定其滚动到的位置。
    // 注意：当ContentSize属性小于Frame时，将不会出发滚动
}
// 当scrollView缩放时，调用该方法。在缩放过程中，回多次调用
- (void)scrollViewDidZoom:(UIScrollView *)scrollView {
    NSLog(@"scrollViewDidScroll");
    float value=scrollView.zoomScale;
    NSLog(@"%f",value);
}
// 当开始滚动视图时，执行该方法。一次有效滑动（开始滑动，滑动一小段距离，只要手指不松开，只算一次滑动），只执行一次。
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    NSLog(@"scrollViewWillBeginDragging");
    CGPoint point=scrollView.contentOffset;
    NSLog(@"%f,%f",point.x,point.y);
}
// 滑动scrollView，并且手指离开时执行。一次有效滑动，只执行一次。
// 当pagingEnabled属性为YES时，不调用，该方法
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    NSLog(@"scrollViewWillEndDragging");
    CGPoint point=scrollView.contentOffset;
    NSLog(@"%f,%f",point.x,point.y);
}
// 滑动视图，当手指离开屏幕那一霎那，调用该方法。一次有效滑动，只执行一次。
// decelerate,指代，当我们手指离开那一瞬后，视图是否还将继续向前滚动（一段距离），经过测试，decelerate=YES
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    
    NSLog(@"scrollViewDidEndDragging");
    if (decelerate) {
        NSLog(@"decelerate");
    }else{
        NSLog(@"no decelerate");
    }
    CGPoint point=scrollView.contentOffset;
    NSLog(@"%f,%f",point.x,point.y);
    
}
// 滑动减速时调用该方法。
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    NSLog(@"scrollViewWillBeginDecelerating");
    CGPoint point=scrollView.contentOffset;
    NSLog(@"%f,%f",point.x,point.y);
    // 该方法在scrollViewDidEndDragging方法之后。
}
// 滚动视图减速完成，滚动将停止时，调用该方法。一次有效滑动，只执行一次。
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    NSLog(@"scrollViewDidEndDecelerating");
    CGPoint point=scrollView.contentOffset;
    NSLog(@"%f,%f",point.x,point.y);
    
//    [_scrollView setContentOffset:CGPointMake(0, 500) animated:YES];
    
}
// 当滚动视图动画完成后，调用该方法，如果没有动画，那么该方法将不被调用
- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView{
    
    NSLog(@"scrollViewDidEndScrollingAnimation");
    CGPoint point=scrollView.contentOffset;
    NSLog(@"%f,%f",point.x,point.y);
    // 有效的动画方法为：
    //    - (void)setContentOffset:(CGPoint)contentOffset animated:(BOOL)animated 方法
    //    - (void)scrollRectToVisible:(CGRect)rect animated:(BOOL)animated 方法
    
    
}
// 返回将要缩放的UIView对象。要执行多次
//- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
//
//    NSLog(@"viewForZoomingInScrollView");
//    return  self.imgView;
//}
// 当将要开始缩放时，执行该方法。一次有效缩放，就只执行一次。
- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(UIView *)view{
    
    NSLog(@"scrollViewWillBeginZooming");
    
}
// 当缩放结束后，并且缩放大小回到minimumZoomScale与maximumZoomScale之间后（我们也许会超出缩放范围），调用该方法。
- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(float)scale{
    
    NSLog(@"scrollViewDidEndZooming");
    
}
// 指示当用户点击状态栏后，滚动视图是否能够滚动到顶部。需要设置滚动视图的属性：_scrollView.scrollsToTop=YES;
- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView{
    return YES;
}
// 当滚动视图滚动到最顶端后，执行该方法
- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView{
    
    NSLog(@"scrollViewDidScrollToTop");
}


@end
