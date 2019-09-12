//
//  NSObject+JRLabel.m
//  JingRuiOnlineSchool
//
//  Created by 黄鹏飞 on 2018/12/20.
//  Copyright © 2018 onesmart. All rights reserved.
//

#import "UILabel+JRLabel.h"

@implementation UILabel (JRLabel)

+ (instancetype)customLabelWithTitle:(NSString *)title textColor:(UIColor *)color font:(UIFont *)font{
    UILabel *label = [[UILabel alloc] init];
    label.text = title;
    label.textColor = color;
    label.font = font;
    return label;
}
@end
