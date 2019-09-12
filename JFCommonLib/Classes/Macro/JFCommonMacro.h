//
//  JFCommonMacro.h
//  Pods
//
//  Created by 黄鹏飞 on 2019/9/12.
//

#ifndef JFCommonMacro_h
#define JFCommonMacro_h

#define Alpha_dispatch_main_sync_safe(block)\
if ([NSThread isMainThread]) {\
block();\
} else {\
dispatch_sync(dispatch_get_main_queue(), block);\
}

#define Alpha_dispatch_main_async_safe(block)\
if ([NSThread isMainThread]) {\
block();\
} else {\
dispatch_async(dispatch_get_main_queue(), block);\
}

#define jr_weakify(var)   __weak typeof(var) weakSelf = var
#define jr_strongify(var) __strong typeof(var) strongSelf = var


#endif /* JFCommonMacro_h */
