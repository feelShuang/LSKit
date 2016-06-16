//
//  LSLog.h
//  iamgeTest
//
//  Created by LiuShuang on 16/6/16.
//  Copyright © 2016年 LiuShuang. All rights reserved.
//

#ifndef LSLog_h
#define LSLog_h


/**
 *  自定义Log日志
 */
#ifdef DEBUG

#define LSBaseLog(...) NSLog(__VA_ARGS__)
#define LSFuncLog NSLog(@"-%d,%s",__LINE__,__func__)
#define LSLog(fmt,...) NSLog((@" \n%s\n -line %d \n -" fmt),__PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

#else

#define LSBaseLog(...)
#define LSFuncLog
#define LSLog(fmt,...)

#endif


#endif /* LSLog_h */
