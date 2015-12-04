//
//  NSCalendar+HMJExtension.m
//  HMJ_Project
//
//  Created by HeMengjie on 15/11/22.
//  Copyright © 2015年 HeMengjie. All rights reserved.
//

#import "NSCalendar+HMJExtension.h"

@implementation NSCalendar (HMJExtension)
+ (instancetype)calendar
{
    if (iOS(8.0)) {
        return [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    }else
    {
        return [NSCalendar currentCalendar];
    }
}
@end
