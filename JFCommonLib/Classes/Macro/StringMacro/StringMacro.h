//
//  StringMacro.h
//  JingRuiOnlineSchoolForIphone
//
//  Created by 黄鹏飞 on 2019/3/13.
//  Copyright © 2019 onesmart. All rights reserved.
//

#ifndef StringMacro_h
#define StringMacro_h

#define str(str)  [NSString stringWithFormat:@"%@", str]
#define int2str(str)  [NSString stringWithFormat:@"%ld", str]
#define long2str(str)  [NSString stringWithFormat:@"%lu", str]
#define uInt2str(str)  [NSString stringWithFormat:@"%lu", (unsigned long)str]
#define strAddStr(str1,str2) [str(str1) stringByAppendingString:str(str2)]

#define strAddStrs(str1, str2, str3) [strAddStr(str1, str2) stringByAppendingString:str(str3)]

#endif /* StringMacro_h */
