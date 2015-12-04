//
//  UIBarButtonItem+HMJExtension.m
//  HMJ_Project
//
//  Created by HeMengjie on 15/11/6.
//  Copyright © 2015年 HeMengjie. All rights reserved.
//

#import "UIBarButtonItem+HMJExtension.h"

@implementation UIBarButtonItem (HMJExtension)
+ (instancetype)itemWithImage:(NSString *)image highlightedImage:(NSString *)highlightedImage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highlightedImage] forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button sizeToFit];
    return [[self alloc] initWithCustomView:button];
}
@end
