//
//  NSString+JRAdditional.h
//  JingRuiOnlineSchool
//
//  Created by maqianli on 2018/10/16.
//  Copyright © 2018 onesmart. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (JRAdditional)

-(BOOL)isValidPhoneNum;

//判断手机号是否合法
-(BOOL)isPhoneNum;

//字符串转成十六进制的字符串
- (NSString *)hexString;

/**
 十进制转换十六进制
 
 @param decimal 十进制数
 @return 十六进制数
 */
+ (NSString *)getHexByDecimal:(NSInteger)decimal;

//weiyi://start?param=ENCRYPT&timestamp=xxxxx(unix 时间戳)
//将上述字符串转成字典
+(NSMutableDictionary *)decodeUrl:(NSString *)aDecodeUrl;

// 给文字增加中划线
- (NSMutableAttributedString *)underLineSolid;

// 精确计算文本高度
- (CGFloat)caculateHeightWithMaxWidth:(CGFloat)maxWidth font:(UIFont *)font;

- (CGFloat)caculateWidthWithMaxHeight:(CGFloat)maxHeight font:(UIFont *)font;

- (BOOL)isEmpty;

- (NSString*)filterEmojiString;


/**
 字符串转字典

 @return dic
 */
-(NSDictionary *)jrStrToDictionary;

/**
 URL编码

 @return 编码后的字符串
 */
-(NSString *)jrURLEncodedString;

/**
 URL解码

 @return 解码后的字符串
 */
- (NSString *)jrURLDecodedString;

- (NSMutableAttributedString *)convertAttributeString;
- (CGFloat )getAttributeStringHeight;
@end

NS_ASSUME_NONNULL_END
