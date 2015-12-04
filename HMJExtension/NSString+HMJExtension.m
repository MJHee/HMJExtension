//
//  NSString+HMJExtension.m
//  HMJ_Project
//
//  Created by HeMengjie on 15/11/21.
//  Copyright © 2015年 HeMengjie. All rights reserved.
//

#import "NSString+HMJExtension.h"

@implementation NSString (HMJExtension)
/**
 *  文件大小
 */
- (unsigned long long)filesize
{
    //文件大小
    unsigned long long size = 0;
    //文件管理者
    NSFileManager *manage = [NSFileManager defaultManager];
    //用来判断是否是文件夹
    BOOL isDirectory = NO;
    //判断路径是否存在
    BOOL exist = [manage fileExistsAtPath:self isDirectory:&isDirectory];
    //不存在就返回0
    if (!exist) return size;
    //判断是否是文件夹
    if (isDirectory) {
        //是文件夹
        //取出子文件的数组
        NSDirectoryEnumerator *enumerator = [manage enumeratorAtPath:self];
        //遍历子文件
        for (NSString *subPath in enumerator) {
            //全路径
            NSString *fullPath = [self stringByAppendingPathComponent:subPath];
            //文件大小进行累加
            size += [manage attributesOfItemAtPath:fullPath error:nil].fileSize;
        }
    }else
    {
        //是文件
        size = [manage attributesOfItemAtPath:self error:nil].fileSize;
    }
    return size;
}
@end
