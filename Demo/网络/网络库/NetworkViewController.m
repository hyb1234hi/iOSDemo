//
//  NetworkViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/1/17.
//  Copyright © 2019年 test. All rights reserved.
//

#import "NetworkViewController.h"

@interface NetworkViewController ()

@end

@implementation NetworkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self downLoadRequest];
}

- (void)downLoadRequest{
   
    AFURLSessionManager *manager = [AFShareManager shareURlManager];
    
    NSURLRequest *request =[ApiUtils  getApiURlRequest:@"/img.jpg"];
    
    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:nil destination:^NSURL *(NSURL *targetPath, NSURLResponse *response) {
        NSURL *documentsDirectoryURL = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
        return [documentsDirectoryURL URLByAppendingPathComponent:[response suggestedFilename]];
    } completionHandler:^(NSURLResponse *response, NSURL *filePath, NSError *error) {
         NSLog(@"下载路径--------->%@", filePath);
    }];
    [downloadTask resume];
}

- (void)normalRequest{
    AFHTTPSessionManager *manager = [AFShareManager shareHttpManager];
    
    NSString *requestUrl = [NSString stringWithFormat:@"%@%@",kBaseUrl,kPublicApi];
    NSDictionary *paramDict = @{
                                @"username":@"dandan",
                                @"pwd":@"dandan",
                                @"type":@"JSON"
                                };
    //2.发送GET请求
    /*
     第一个参数:请求路径(不包含参数).NSString
     第二个参数:字典(发送给服务器的数据~参数)
     第三个参数:progress 进度回调
     第四个参数:success 成功回调
     task:请求任务
     responseObject:响应体信息(JSON--->OC对象)
     第五个参数:failure 失败回调
     error:错误信息
     响应头:task.response
     */
    
    [manager GET:requestUrl parameters:paramDict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSLog(@"%@------>%@",[responseObject class],responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"请求失败------>%@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
