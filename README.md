
![](https://img.shields.io/badge/platform-iOS-red.svg)   ![](https://img.shields.io/badge/language-Objective--C%2FSwift%203.0-orange.svg) ![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg)


![image](https://raw.githubusercontent.com/Mill0/XHCarouselPicture/master/1.gif) 

## iOS 图片轮播

支持本地图片和网页图片浏览, 无需格外设置, 支持图片点击定位, 自定义轮播时间, 设置分页控件的位置, 描述文字字体, 颜色...



## Usage 使用方法
 ###方法一:
```objc
    NSArray *arr3 = @[@"http://pic39.nipic.com/20140226/18071023_162553457000_2.jpg",
     [UIImage imageNamed:@"2.jpg"], 
     @"http://hiphotos.baidu.com/praisejesus/pic/item/e8df7df89fac869eb68f316d.jpg", 
     [UIImage imageNamed:@"1.jpg"]];

    NSArray *describeArray = @[@"这是第一张图片的描述",
     @"这是第二张图片的描述", 
     @"这是第三张图片的描述", 
     @"这是第四张图片的描述"];

    self.carouselView = [[XHCarouselPictureView alloc] initWithFrame:CGRectMake(0, 30, [UIScreen mainScreen].bounds.size.width, 260) 
    carouselViewWithImageArray:arr3 
    describeArray:describeArray 
    ClickBlock:^(NSInteger clickIndex) {

        NSLog(@"点击的图片：%ld", (long)clickIndex);

    }];

    //设置每张图片的停留时间
    _carouselView.switchTime = 2;

    //设置分页控件的图片,不设置则为系统默认
     [_carouselView setPageImage:[UIImage imageNamed:@"other"] andCurrentImage:[UIImage imageNamed:@"current"]];

    //设置分页控件的位置，默认为PositionBottomCenter
    _carouselView.pagePosition = PositionBottomRight;

    //设置背景颜色，默认为黑色半透明
    _carouselView.desLabelBackgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];

    //设置字体，默认为13号字体
    _carouselView.desLabelFont = [UIFont systemFontOfSize:15];

    //设置文字颜色，默认为白色
    _carouselView.desLabelTextColor = [UIColor whiteColor];

    [self.view addSubview:self.carouselView];
```


 ###方法二:
```objc
    self.carouselPictureView = [XHCarouselPictureView carouselViewWithImageArray:imageA describeArray:describeArray];
    
    self.carouselPictureView.frame = CGRectMake(0, 550, [UIScreen mainScreen].bounds.size.width, 260);
    
    self.carouselPictureView.imageClickBlock = ^(NSInteger clickIndex) {
        NSLog(@"第 %ld 张图片被点击", (long)clickIndex);
    };
    
    //设置每张图片的停留时间
    self.carouselPictureView.switchTime = 2.5;
    
    [self.view addSubview:self.carouselPictureView];

```

