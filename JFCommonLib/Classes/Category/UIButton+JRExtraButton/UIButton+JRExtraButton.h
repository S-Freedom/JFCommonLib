//
//  UIButton+JRExtraButton.h
//  JingRuiOnlineSchoolForIphone
//
//  Created by 黄鹏飞 on 2019/6/26.
//  Copyright © 2019 onesmart. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

IB_DESIGNABLE
@interface UIButton (JRExtraButton)

@property (nonatomic, assign) IBInspectable CGFloat topTitleEdgeInsets;
@property (nonatomic, assign) IBInspectable CGFloat leftTitleEdgeInsets;
@property (nonatomic, assign) IBInspectable CGFloat bottomTitleEdgeInsets;
@property (nonatomic, assign) IBInspectable CGFloat rightTitleEdgeInsets;

@property (nonatomic, assign) IBInspectable CGFloat topImageEdgeInsets;
@property (nonatomic, assign) IBInspectable CGFloat leftImageEdgeInsets;
@property (nonatomic, assign) IBInspectable CGFloat bottomImageEdgeInsets;
@property (nonatomic, assign) IBInspectable CGFloat rightImageEdgeInsets;

@property (nonatomic, assign) IBInspectable CGFloat topContentEdgeInsets;
@property (nonatomic, assign) IBInspectable CGFloat leftContentEdgeInsets;
@property (nonatomic, assign) IBInspectable CGFloat bottomContentEdgeInsets;
@property (nonatomic, assign) IBInspectable CGFloat rightContentEdgeInsets;
@end

NS_ASSUME_NONNULL_END
