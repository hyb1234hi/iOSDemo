//
//  ApiUtils.m
//  Demo
//
//  Created by 王敏欣 on 2019/1/17.
//  Copyright © 2019年 test. All rights reserved.
//

#import "ApiUtils.h"

@implementation ApiUtils
+ (NSURL*)getApiURl:(NSString*) urlStr{
    NSURL *url= [NSURL URLWithString:[NSString stringWithFormat:@"%@%@",kBaseUrl,urlStr]];
    return url;
}
+ (NSURLRequest*)getApiURlRequest:(NSString*) urlStr{
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@%@",kBaseUrl,urlStr]]];
    return request;
}
@end
