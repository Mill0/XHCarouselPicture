//
//  ViewController.m
//  XHCarouselPicture
//
//  Created by Milodongg on 16/5/5.
//  Copyright © 2016年 Milodongg. All rights reserved.
//

#import "ViewController.h"
#import "XHCarouselPictureView.h"

@interface ViewController ()

@property (nonatomic, strong) XHCarouselPictureView *carouselView;

@property (nonatomic, strong) XHCarouselPictureView *carouselPictureView;
@property (nonatomic, strong) XHCarouselPictureView *carouselPictureTwoView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *arr3 = @[@"http://pic39.nipic.com/20140226/18071023_162553457000_2.jpg", [UIImage imageNamed:@"2.jpg"], @"http://hiphotos.baidu.com/praisejesus/pic/item/e8df7df89fac869eb68f316d.jpg", [UIImage imageNamed:@"1.jpg"]];
    
    NSArray *describeArray = @[@"这是第一张图片的描述", @"这是第二张图片的描述", @"这是第三张图片的描述", @"这是第四张图片的描述"];
    
    [self addCarouselViewWithImageArray:arr3 describeArray:describeArray];
    [self addTwoCarouselViewWithImageArray:arr3 describeArray:describeArray];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addCarouselViewWithImageArray:(NSArray *)imageA describeArray:(NSArray *)describeArray
{
    self.carouselView = [[XHCarouselPictureView alloc] initWithFrame:CGRectMake(0, 30, [UIScreen mainScreen].bounds.size.width, 260) carouselViewWithImageArray:imageA describeArray:describeArray ClickBlock:^(NSInteger clickIndex) {
        NSLog(@"点击的图片：%ld", (long)clickIndex);
    }];
    
    //设置每张图片的停留时间
    _carouselView.switchTime = 2;
    
    //设置分页控件的图片,不设置则为系统默认
    //        [_carouselView setPageImage:[UIImage imageNamed:@"other"] andCurrentImage:[UIImage imageNamed:@"current"]];
    
    //设置分页控件的位置，默认为PositionBottomCenter
    _carouselView.pagePosition = PositionBottomRight;
    
    //设置背景颜色，默认为黑色半透明
    _carouselView.desLabelBackgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    
    //设置字体，默认为13号字体
    _carouselView.desLabelFont = [UIFont systemFontOfSize:15];
    //设置文字颜色，默认为白色
    _carouselView.desLabelTextColor = [UIColor whiteColor];
    
    [self.view addSubview:self.carouselView];
}

- (void)addTwoCarouselViewWithImageArray:(NSArray *)imageA describeArray:(NSArray *)describeArray
{
    _carouselPictureTwoView = [[XHCarouselPictureView alloc] initWithFrame:CGRectMake(0, 320, [UIScreen mainScreen].bounds.size.width, 260) carouselViewWithImageArray:imageA describeArray:nil ClickBlock:^(NSInteger clickIndex) {
        NSLog(@"点击的图片：%ld", (long)clickIndex);
    }];
    
    //设置每张图片的停留时间
    _carouselPictureTwoView.switchTime = 2.5;
    
    //设置分页控件的图片,不设置则为系统默认
    //        [_carouselView setPageImage:[UIImage imageNamed:@"other"] andCurrentImage:[UIImage imageNamed:@"current"]];
    
    //设置分页控件的位置，默认为PositionBottomCenter
    _carouselPictureTwoView.pagePosition = PositionBottomCenter;
    
    //设置背景颜色，默认为黑色半透明
    _carouselPictureTwoView.desLabelBackgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    
    //设置字体，默认为13号字体
    _carouselPictureTwoView.desLabelFont = [UIFont systemFontOfSize:15];
    //设置文字颜色，默认为白色
    _carouselPictureTwoView.desLabelTextColor = [UIColor whiteColor];
    
    [self.view addSubview:_carouselPictureTwoView];
}
@end
