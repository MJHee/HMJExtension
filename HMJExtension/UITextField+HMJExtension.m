//
//  UITextField+HMJExtension.m
//  HMJ_Project
//
//  Created by HeMengjie on 15/11/9.
//  Copyright © 2015年 HeMengjie. All rights reserved.
//

#import "UITextField+HMJExtension.h"
static NSString * const HMJPlaceholderColorKey = @"placeholderLabel.textColor";

@implementation UITextField (HMJExtension)

- (void)setHmj_placeholderColor:(UIColor *)hmj_placeholderColor
{
    //判断是否有占位文字
    if (self.placeholder.length == 0) {
        //提前设置占位文字
        self.placeholder = @" ";
    }
    //恢复默认的颜色
    if (hmj_placeholderColor == nil) {
        self.hmj_placeholderColor = [UIColor colorWithRed:0 green:0 blue:0.0980392 alpha:0.22];
    }
    //设置占位文字颜色
    [self setValue:hmj_placeholderColor forKeyPath:HMJPlaceholderColorKey];
}

- (UIColor *)hmj_placeholderColor
{
    return [self valueForKeyPath:HMJPlaceholderColorKey];
}
@end
