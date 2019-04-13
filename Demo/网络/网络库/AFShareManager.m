//
//  AFShareManager.m
//  Demo
//
//  Created by 王敏欣 on 2019/1/17.
//  Copyright © 2019年 test. All rights reserved.
//

#import "AFHTTPSessionManager.h"
#import "AFShareManager.h"

@interface AFShareManager ()

@end

@implementation AFShareManager

+(AFHTTPSessionManager *)shareHttpManager {
    static AFHTTPSessionManager *manager=nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [AFHTTPSessionManager manager];
        //        manager.requestSerializer = [AFJSONRequestSerializer serializer];
        //        manager.responseSerializer = [AFJSONResponseSerializer serializer];
    });
    return manager;
}

+(AFURLSessionManager *)shareURlManager {
    static AFURLSessionManager *manager=nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
        manager   = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
        //        manager.requestSerializer = [AFJSONRequestSerializer serializer];
        //        manager.responseSerializer = [AFJSONResponseSerializer serializer];
    });
    return manager;
}
 
@end
