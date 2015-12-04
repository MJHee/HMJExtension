//
//  UIImage+HMJCIrcleImage.m
//  HMJ_Project
//
//  Created by HeMengjie on 15/11/28.
//  Copyright © 2015年 HeMengjie. All rights reserved.
//

#import "UIImage+HMJCIrcleImage.h"

@implementation UIImage (HMJCIrcleImage)
- (instancetype)hmj_circleImage
{
    //开启上下文
    UIGraphicsBeginImageContext(self.size);
    //上下文
    CGContextRef ref = UIGraphicsGetCurrentContext();
    //添加一个圆
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextAddEllipseInRect(ref, rect);
    //裁剪
    CGContextClip(ref);
    //绘制图片
    [self drawInRect:rect];
    //获得图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //关闭图形上下文
    UIGraphicsEndImageContext();
    return image;
}

+ (instancetype)hmj_circleImage:(NSString *)imageName
{
    return [[self imageNamed:imageName] hmj_circleImage];
}
@end
