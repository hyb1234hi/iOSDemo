//
//  AFShareManager.h
//  Demo
//
//  Created by 王敏欣 on 2019/1/17.
//  Copyright © 2019年 test. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AFShareManager : NSObject
+(AFHTTPSessionManager *)shareHttpManager;
+(AFURLSessionManager *)shareURlManager ;
@end
