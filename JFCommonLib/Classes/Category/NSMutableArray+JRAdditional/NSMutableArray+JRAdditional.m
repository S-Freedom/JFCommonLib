//
//  NSArray+JRAdditional.m
//  JingRuiOnlineSchoolForIphone
//
//  Created by 黄鹏飞 on 2019/4/29.
//  Copyright © 2019 onesmart. All rights reserved.
//

#import "NSMutableArray+JRAdditional.h"
#import <objc/runtime.h>

@implementation NSMutableArray (JRAdditional)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
    
        Class cls = NSClassFromString(@"__NSArrayM");
        Method insertM1 = class_getInstanceMethod(cls, @selector(insertObject:atIndex:));
        Method insertM2 = class_getInstanceMethod(cls, @selector(jr_insertObject:atIndex:));
        method_exchangeImplementations(insertM1, insertM2);
        
        Method addObject1 = class_getInstanceMethod(cls, @selector(addObject:));
        Method addObject2 = class_getInstanceMethod(cls, @selector(jr_addObject:));
        method_exchangeImplementations(addObject1, addObject2);
    });
}

- (void)jr_insertObject:(id)anObject atIndex:(NSUInteger)index
{
    
    if (anObject){
        [self jr_insertObject:anObject atIndex:index];
    }
}

- (void)jr_addObject:(id)anObject{
    
    if (anObject){
        
        [self jr_addObject:anObject];
    }
}
@end
