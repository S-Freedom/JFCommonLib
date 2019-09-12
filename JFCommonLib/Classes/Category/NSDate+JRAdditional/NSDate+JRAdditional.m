//
//  NSDate+JRAdditional.m
//  JingRuiOnlineSchoolForIphone
//
//  Created by 黄鹏飞 on 2019/2/18.
//  Copyright © 2019 onesmart. All rights reserved.
//

#import "NSDate+JRAdditional.h"

@implementation NSDate (JRAdditional)


// format1: 返回月日： 1月1日
+ (NSString *)getFormat1FromStr:(NSString *)dateStr{
    
    NSTimeZone *zone = [NSTimeZone defaultTimeZone];
    NSInteger intervel = [zone secondsFromGMT];
    NSTimeInterval startTime = ([dateStr integerValue] + intervel) / 1000;
    NSDate *startDate = [NSDate dateWithTimeIntervalSince1970:startTime];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSUInteger unitFlags = NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *dateComponent = [calendar components:unitFlags fromDate:startDate];
    
    NSInteger month = [dateComponent month];
    NSInteger day = [dateComponent day];
    return [NSString stringWithFormat:@"%ld月%ld日", (long)month, (long)day];
}

// format2: 返回2019-06-03 15:4格式
+ (NSString *)getFormat2FromStr:(NSString *)dateStr{
    
    NSTimeInterval timeInterval = [dateStr integerValue]/1000;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"YYYY-MM-dd HH:mm";
    NSString *resultStr = [formatter stringFromDate:date];
    return resultStr;
}
@end
