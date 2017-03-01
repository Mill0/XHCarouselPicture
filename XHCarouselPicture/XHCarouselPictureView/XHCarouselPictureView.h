//
//  XHCarouselPictureView.h
//  XHCarouselPicture
//
//  Created by Milodongg on 16/5/5.
//  Copyright © 2016年 Milodongg. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ClickBlock)(NSInteger clickIndex);

//pageControl的显示位置
typedef enum {
    PositionNone,           //默认值 == PositionBottomCenter
    PositionHide,           //隐藏
    PositionTopCenter,      //中上
    PositionBottomLeft,     //左下
    PositionBottomCenter,   //中下
    PositionBottomRight     //右下
} PageControlPosition;

@interface XHCarouselPictureView : UIView

/** 图片轮播数组，可以是图片，也可以是网络路径 */
@property (nonatomic, strong) NSArray *imageArray;


/**
 *  图片描述的字符串数组，应与图片顺序对应
 *
 *  图片描述控件默认是隐藏的
 *  设置图片描述后，会取消隐藏，显示在图片底部
 *  若之后又需要隐藏，只需将该属性设为nil即可
 */
@property (nonatomic, strong) NSArray *describeArray;

/** 图片描述控件的背景颜色，默认为黑色半透明 */
@property (nonatomic, strong) UIColor *desLabelBackgroundColor;

/**  图片描述控件的字体，默认为13号字体 */
@property (nonatomic, strong) UIFont *desLabelFont;

/**
 *  图片描述控件的文字颜色，默认为白色
 */
@property (nonatomic, strong) UIColor *desLabelTextColor;


/**
 *  每一页停留时间，默认为5s，最少2s
 *  当设置的值小于2s时，则为默认值
 */
@property (nonatomic, assign) NSTimeInterval switchTime;


/**
 *  设置分页控件位置，默认为PositionBottomCenter
 */
@property (nonatomic, assign) PageControlPosition pagePosition;





/**
 *  构造方法
 *
 *  @param imageArray 图片数组
 *  @param describeArray 图片描述数组
 *
 */
- (instancetype)initWithFrame:(CGRect)frame carouselViewWithImageArray:(NSArray *)imageArray describeArray:(NSArray *)describeArray ClickBlock:(ClickBlock)aBlock;

+ (instancetype)carouselViewWithImageArray:(NSArray *)imageArray describeArray:(NSArray *)describeArray ClickBlock:(ClickBlock)aBlock;


/**
 *  设置分页控件指示器的图片
 *  两个图片都不能为空，否则设置无效
 *  不设置则为系统默认
 *
 *  @param pageImage    其他页码的图片
 *  @param currentImage 当前页码的图片
 */
- (void)setPageImage:(UIImage *)pageImage andCurrentImage:(UIImage *)currentImage;


/**
 *  设置分页控件指示器的颜色
 *  不设置则为系统默认
 *
 *  @param color    其他页码的颜色
 *  @param currentColor 当前页码的颜色
 */
- (void)setPageColor:(UIColor *)color andCurrentPageColor:(UIColor *)currentColor;

/**
 *  清除沙盒中的图片缓存
 */
- (void)clearDiskCache;
@end
