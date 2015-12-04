//
//  NSDate+HMJExtension.h
//  HMJ_Project
//
//  Created by HeMengjie on 15/11/23.
//  Copyright © 2015年 HeMengjie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (HMJExtension)
/**
 *  时间间隔比较
 */
- (NSDateComponents *)intervalToDate:(NSDate *)date;
/**
 *  与当前时间的间隔
 */
- (NSDateComponents *)intervalToNow;
/**
 *  是否为今年
 */
- (BOOL)isThisYear;
/**
 *  是否为今天
 */
- (BOOL)isToday;
/**
 *  是否为昨天
 */
- (BOOL)isYesterday;
/**
 *  是否为明天
 */
- (BOOL)isTomorrow;
@end
