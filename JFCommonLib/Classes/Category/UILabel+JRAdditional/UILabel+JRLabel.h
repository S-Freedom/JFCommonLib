//
//  NSObject+JRLabel.h
//  JingRuiOnlineSchool
//
//  Created by 黄鹏飞 on 2018/12/20.
//  Copyright © 2018 onesmart. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (JRLabel)

+ (instancetype)customLabelWithTitle:(NSString *)title textColor:(UIColor *)color font:(UIFont *)font;
@end

NS_ASSUME_NONNULL_END
