//
//  UIButton+JRExtraButton.m
//  JingRuiOnlineSchoolForIphone
//
//  Created by 黄鹏飞 on 2019/6/26.
//  Copyright © 2019 onesmart. All rights reserved.
//

#import "UIButton+JRExtraButton.h"

@implementation UIButton (JRExtraButton)

#pragma mark --titleEdge
- (CGFloat)topTitleEdgeInsets{
    return self.titleEdgeInsets.top;
}
- (CGFloat)leftTitleEdgeInsets{
    return self.titleEdgeInsets.left;
}
- (CGFloat)bottomTitleEdgeInsets{
    return self.titleEdgeInsets.bottom;
}
- (CGFloat)rightTitleEdgeInsets{
    return self.titleEdgeInsets.right;
}

- (void)setTopTitleEdgeInsets:(CGFloat)top{
    UIEdgeInsets edgeInset = self.titleEdgeInsets;
    edgeInset.top = top;
    self.titleEdgeInsets = edgeInset;
}
- (void)setLeftTitleEdgeInsets:(CGFloat)left{
    UIEdgeInsets edgeInset = self.titleEdgeInsets;
    edgeInset.left = left;
    self.titleEdgeInsets = edgeInset;
}
- (void)setBottomTitleEdgeInsets:(CGFloat)bottom{
    UIEdgeInsets edgeInset = self.titleEdgeInsets;
    edgeInset.bottom = bottom;
    self.titleEdgeInsets = edgeInset;
}
- (void)setRightTitleEdgeInsets:(CGFloat)right{
    UIEdgeInsets edgeInset = self.titleEdgeInsets;
    edgeInset.right = right;
    self.titleEdgeInsets = edgeInset;
}

#pragma mark --imageEdge
- (CGFloat)topImageEdgeInsets{
    return self.imageEdgeInsets.top;
}
- (CGFloat)leftImageEdgeInsets{
    return self.imageEdgeInsets.left;
}
- (CGFloat)bottomImageEdgeInsets{
    return self.imageEdgeInsets.bottom;
}
- (CGFloat)rightImageEdgeInsets{
    return self.imageEdgeInsets.right;
}

- (void)setTopImageEdgeInsets:(CGFloat)top{
    UIEdgeInsets edgeInset = self.imageEdgeInsets;
    edgeInset.top = top;
    self.imageEdgeInsets = edgeInset;
}
- (void)setLeftImageEdgeInsets:(CGFloat)left{
    UIEdgeInsets edgeInset = self.imageEdgeInsets;
    edgeInset.left = left;
    self.imageEdgeInsets = edgeInset;
}
- (void)setBottomImageEdgeInsets:(CGFloat)bottom{
    UIEdgeInsets edgeInset = self.imageEdgeInsets;
    edgeInset.bottom = bottom;
    self.imageEdgeInsets = edgeInset;
}
- (void)setRightImageEdgeInsets:(CGFloat)right{
    UIEdgeInsets edgeInset = self.imageEdgeInsets;
    edgeInset.right = right;
    self.imageEdgeInsets = edgeInset;
}

#pragma mark --contentEdge
- (CGFloat)topContentEdgeInsets{
    return self.contentEdgeInsets.top;
}
- (CGFloat)leftContentEdgeInsets{
    return self.contentEdgeInsets.left;
}
- (CGFloat)bottomContentEdgeInsets{
    return self.contentEdgeInsets.bottom;
}
- (CGFloat)rightContentEdgeInsets{
    return self.contentEdgeInsets.right;
}

- (void)setTopContentEdgeInsets:(CGFloat)top{
    UIEdgeInsets edgeInset = self.contentEdgeInsets;
    edgeInset.top = top;
    self.contentEdgeInsets = edgeInset;
}
- (void)setLeftContentEdgeInsets:(CGFloat)left{
    UIEdgeInsets edgeInset = self.contentEdgeInsets;
    edgeInset.left = left;
    self.contentEdgeInsets = edgeInset;
}
- (void)setBottomContentEdgeInsets:(CGFloat)bottom{
    UIEdgeInsets edgeInset = self.contentEdgeInsets;
    edgeInset.bottom = bottom;
    self.contentEdgeInsets = edgeInset;
}
- (void)setRightContentEdgeInsets:(CGFloat)right{
    UIEdgeInsets edgeInset = self.contentEdgeInsets;
    edgeInset.right = right;
    self.contentEdgeInsets = edgeInset;
}
@end

