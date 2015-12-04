//
//  UIImage+HMJStrachImage.m
//  HMJ_Project
//
//  Created by HeMengjie on 15/11/18.
//  Copyright © 2015年 HeMengjie. All rights reserved.
//

#import "UIImage+HMJStrachImage.h"

@implementation UIImage (HMJStrachImage)
+ (instancetype)imageWithStrachImageName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    //顶部保护宽度
    CGFloat topInset = HMJStrachInset;
    //底部保护宽度
    CGFloat bottomInset = HMJStrachInset;
    //左边保护宽度
    CGFloat leftInset = HMJStrachInset;
    //右边保护宽度
    CGFloat rightInset = HMJStrachInset;
    
    UIEdgeInsets insets = UIEdgeInsetsMake(topInset, leftInset, bottomInset, rightInset);
    
    image = [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeTile];
    return image;
}
@end
