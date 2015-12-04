//
//  UIBarButtonItem+HMJExtension.h
//  HMJ_Project
//
//  Created by HeMengjie on 15/11/6.
//  Copyright © 2015年 HeMengjie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (HMJExtension)
+ (instancetype)itemWithImage:(NSString *)image highlightedImage:(NSString *)highlightedImage target:(id)target action:(SEL)action;
@end
