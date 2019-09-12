//
//  NSDate+JRAdditional.h
//  JingRuiOnlineSchoolForIphone
//
//  Created by 黄鹏飞 on 2019/2/18.
//  Copyright © 2019 onesmart. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (JRAdditional)

// 获取几月几日
+ (NSString *)getFormat1FromStr:(NSString *)dateStr;
// 获取年月日时分
+ (NSString *)getFormat2FromStr:(NSString *)dateStr;
@end

NS_ASSUME_NONNULL_END
