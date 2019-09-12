//
//  UIButton+JRButton.h
//  JingRuiOnlineSchool
//
//  Created by 黄鹏飞 on 2019/1/10.
//  Copyright © 2019 onesmart. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (JRButton)

+ (instancetype)customButtonWithTitle:(NSString *)title textColor:(UIColor *)color font:(UIFont *)font;

// 以下方法增加button的点击区域
// 上下左右一致
- (void)setEnlargeEdge:(CGFloat)size;

// 单独设置上下左右
- (void)setEnlargeEdgeWithTop:(CGFloat) top right:(CGFloat) right bottom:(CGFloat) bottom left:(CGFloat) left;
@end

NS_ASSUME_NONNULL_END
