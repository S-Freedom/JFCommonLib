//
//  NSDictionary+JRAdditional.m
//  JingRuiOnlineSchoolForIphone
//
//  Created by 黄鹏飞 on 2019/4/29.
//  Copyright © 2019 onesmart. All rights reserved.
//

#import "NSMutableDictionary+JRAdditional.h"
#import <objc/runtime.h>
@implementation NSMutableDictionary (JRAdditional)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        Class cls = NSClassFromString(@"__NSDictionaryM");
        Method setObject1 = class_getInstanceMethod(cls, @selector(setObject:forKeyedSubscript:));
        Method setObject2 = class_getInstanceMethod(cls, @selector(jr_setObject:forKeyedSubscript:));
        method_exchangeImplementations(setObject1, setObject2);
        
        Class cls2 = NSClassFromString(@"__NSDictionaryI");
        Method objectForKey1 = class_getInstanceMethod(cls2, @selector(objectForKeyedSubscript:));
        Method objectForKey2 = class_getInstanceMethod(cls2, @selector(jr_objectForKeyedSubscript:));
        method_exchangeImplementations(objectForKey1, objectForKey2);
        
        Class cls3 = NSClassFromString(@"__NSPlaceholderDictionary");
        Method initWithObj1 = class_getInstanceMethod(cls3, @selector(initWithObjects:forKeys:count:));
        Method initWithObj2 = class_getInstanceMethod(cls3, @selector(jr_initWithObjects:forKeys:count:));
        method_exchangeImplementations(initWithObj1, initWithObj2);
    });
}

- (void)jr_setObject:(id)obj forKeyedSubscript:(id<NSCopying>)key
{
    if (!key) return;
    
    [self jr_setObject:obj forKeyedSubscript:key];
}

- (id)jr_objectForKeyedSubscript:(id)key
{
    if (!key) return nil;
    
    return [self jr_objectForKeyedSubscript:key];
}

-(id)jr_initWithObjects:(id *)objects forKeys:(id<NSCopying> *)keys count:(NSUInteger)count {
    
    NSUInteger rightCount = 0;
    for (NSUInteger i = 0; i < count; i++) {
        
        if (objects[i] == nil) {
            objects[i] = @"";
        }
        rightCount++;
    }
    return  [self jr_initWithObjects:objects forKeys:keys count:rightCount];
}
@end
