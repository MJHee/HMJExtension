//
//  NSDate+HMJExtension.m
//  HMJ_Project
//
//  Created by HeMengjie on 15/11/23.
//  Copyright © 2015年 HeMengjie. All rights reserved.
//

#import "NSDate+HMJExtension.h"

@implementation NSDate (HMJExtension)
/**
 *  时间间隔比较
 */
- (NSDateComponents *)intervalToDate:(NSDate *)date
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    
    return [calendar components:unit fromDate:self toDate:date options:NSCalendarWrapComponents];
}
/**
 *  与当前时间的间隔
 */
- (NSDateComponents *)intervalToNow
{
    return [self intervalToDate:[NSDate date]];
}
/**
 *  是否为今年
 */
- (BOOL)isThisYear
{
    NSCalendar *calendar = [NSCalendar calendar];
    NSInteger selfYear = [calendar component:NSCalendarUnitYear fromDate:self];
    NSInteger nowYear = [calendar component:NSCalendarUnitYear fromDate:[NSDate date]];
    return selfYear == nowYear;
}
/**
 *  是否为今天
 */
- (BOOL)isToday
{
    NSCalendar *calendar = [NSCalendar calendar];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *selfComps = [calendar components:unit fromDate:self];
    NSDateComponents *nowComps = [calendar components:unit fromDate:[NSDate date]];
    return selfComps.year == nowComps.year
    && selfComps.month == nowComps.month
    && selfComps.day == nowComps.day;
}
/**
 *  是否为昨天
 */
- (BOOL)isYesterday
{
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyyMMdd";
    
    NSString *selfString = [fmt stringFromDate:self];
    NSString *nowString = [fmt stringFromDate:[NSDate date]];
    
    NSDate *selfDate = [fmt dateFromString:selfString];
    NSDate *nowDate = [fmt dateFromString:nowString];
    
    NSCalendar *calendar = [NSCalendar calendar];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    
    NSDateComponents *comps = [calendar components:unit fromDate:selfDate toDate:nowDate options:0];
    
    return comps.year == 0
    && comps.month == 0
    && comps.day == 1;
}
/**
 *  是否为明天
 */
- (BOOL)isTomorrow
{
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyyMMdd";
    
    NSString *selfString = [fmt stringFromDate:self];
    NSString *nowString = [fmt stringFromDate:[NSDate date]];
    
    NSDate *selfDate = [fmt dateFromString:selfString];
    NSDate *nowDate = [fmt dateFromString:nowString];
    
    NSCalendar *calendar = [NSCalendar calendar];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    
    NSDateComponents *comps = [calendar components:unit fromDate:selfDate toDate:nowDate options:0];
    
    return comps.year == 0
    && comps.month == 0
    && comps.day == -1;
}
@end
