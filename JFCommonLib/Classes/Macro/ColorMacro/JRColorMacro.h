//
//  JRColorMacro.h
//  JingRuiOnlineSchool
//
//  Created by 黄鹏飞 on 2018/12/21.
//  Copyright © 2018 onesmart. All rights reserved.
//

#ifndef JRColorMacro_h
#define JRColorMacro_h

/// 示例：RGB(0xFFFFFF)
#define RGB(hexValue)       RGBA(hexValue, 1.0)
/// 示例：RGBA(0xFFFFFF, 0.5)
#define RGBA(hexValue, a)   [UIColor colorWithRed:((CGFloat)((hexValue & 0xFF0000) >> 16))/255.0 green:((CGFloat)((hexValue & 0xFF00) >> 8))/255.0 blue:((CGFloat)(hexValue & 0xFF))/255.0 alpha:a]


#endif /* JRColorMacro_h */
