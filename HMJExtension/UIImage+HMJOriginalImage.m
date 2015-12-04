//
//  UIImage+HMJOriginalImage.m
//  HMJ_Project
//
//  Created by HeMengjie on 15/11/6.
//  Copyright © 2015年 HeMengjie. All rights reserved.
//

#import "UIImage+HMJOriginalImage.h"

@implementation UIImage (HMJOriginalImage)
+ (instancetype)imageWithOriginalWithImageName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
@end
