//
//  UIImageView+HMJHead.m
//  HMJ_Project
//
//  Created by HeMengjie on 15/11/28.
//  Copyright © 2015年 HeMengjie. All rights reserved.
//

#import "UIImageView+HMJHead.h"

@implementation UIImageView (HMJHead)

- (void)hmj_setHeader:(NSString *)url
{
    [self hmj_setCircleHeader:url];
}

- (void)hmj_setCircleHeader:(NSString *)url
{
    UIImage *placeholder = [UIImage hmj_circleImage:@"defaultUserIcon"];
    [self sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:placeholder completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        if (image == nil) return;
        self.image = [image hmj_circleImage];
    }];
}

- (void)hmj_setRectHeader:(NSString *)url
{
    UIImage *placeholder = [UIImage imageNamed:@"defaultUserIcon"];
    [self sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:placeholder];
}

@end
