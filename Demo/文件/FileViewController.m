//
//  FileViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/12/26.
//  Copyright © 2019 test. All rights reserved.
//

#import "FileViewController.h"

//https://www.jianshu.com/p/a08cf375043a

@interface FileViewController ()

@end

@implementation FileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self logFilePath];
    
    // Do any additional setup after loading the view.
}

- (void)logFilePath{
    
    NSString *dirHome=NSHomeDirectory();
    NSLog(@"dirHome--------------------%@",dirHome);
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSLog(@"documentsDirectory--------------------%@",documentsDirectory);
    
    paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSString *libraryDirectory = [paths objectAtIndex:0];
    NSLog(@"libraryDirectory--------------------%@",libraryDirectory);
    
    NSArray *cacPath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *cachePath = [cacPath objectAtIndex:0];
    NSLog(@"cachePath--------------------%@",cachePath);
    
    NSString *tmpDirectory = NSTemporaryDirectory();
    NSLog(@"tmpDirectory--------------------%@",tmpDirectory);
    
    NSString *pngPath = [self getResourcesFile:@"邀请码-标题.png"];
    NSLog(@"邀请码-标题--------------------%@",pngPath);
    
    NSFileManager *fm = [NSFileManager defaultManager];
    
    if([fm fileExistsAtPath:pngPath]){
        NSLog(@"邀请码-标题----------fileExistsAtPath----------%@",@"YES");
    }else{
        NSLog(@"邀请码-标题----------fileExistsAtPath----------%@",@"NO");
    }
    
    NSString *zipPath = [self getResourcesFile:@"amaro.zip"];
    NSLog(@"amaro.zip--------------------%@",zipPath);
      
    if([fm fileExistsAtPath:pngPath]){
        NSLog(@"amaro.zip----------fileExistsAtPath----------%@",@"YES");
    }else{
        NSLog(@"amaro.zip----------fileExistsAtPath----------%@",@"NO");
    }
    

}

//创建文件夹/目录(返回创建结果)
-(BOOL)createDir:(NSString *)fileName{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString * path = [NSString stringWithFormat:@"%@/%@",documentsDirectory,fileName];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL isDir;
    if  (![fileManager fileExistsAtPath:path isDirectory:&isDir]) {//先判断目录是否存在，不存在才创建
        BOOL res=[fileManager createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:nil];
        return res;
    } else {
        return NO;
    }
}

//创建文件(返回创建结果)
-(BOOL)createFile:(NSString *)path{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *testPath = [path stringByAppendingPathComponent:@"test.c"];//在传入的路径下创建test.c文件
    BOOL res=[fileManager createFileAtPath:testPath contents:nil attributes:nil];
    //通过data创建数据
//    [fileManager createFileAtPath:testPath contents:data attributes:nil];
    return res;
}

//读文件数据
-(void)readFile:(NSString *)path{
    //方法1:
    NSData * data = [NSData dataWithContentsOfFile:path];
    NSString * content = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    //方法2:
//    NSString * content = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"文件读取成功: %@",content);
}

//根据路径删除文件(返回删除结果)
-(BOOL)deleteFileByPath:(NSString *)path{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    BOOL res=[fileManager removeItemAtPath:path error:nil];
    
    NSLog(@"文件是否存在: %@",[fileManager isExecutableFileAtPath:path]?@"YES":@"NO");
    
    return res;
    
}

//根据文件名删除文件
- (BOOL)deleteFileByName:(NSString *)name{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
//    [fileManager removeItemAtPath:[self getLocalFilePath:fileName] error:nil];//getLocalFilePath方法在下面
    return YES;
}

//根据路径复制文件
-(BOOL)copyFile:(NSString *)path topath:(NSString *)topath
{
    
    BOOL result = NO;
    NSError * error = nil;
    
    result = [[NSFileManager defaultManager]copyItemAtPath:path toPath:topath error:&error ];
    
    if (error){
        NSLog(@"copy失败：%@",[error localizedDescription]);
    }
    return result;
}

//根据路径剪切文件
- (BOOL)cutFile:(NSString *)path topath:(NSString *)topath
{
    
    BOOL result = NO;
    NSError * error = nil;
    result = [[NSFileManager defaultManager]moveItemAtPath:path toPath:topath error:&error ];
    if (error){
        NSLog(@"cut失败：%@",[error localizedDescription]);
    }
    return result;
    
}

//根据文件名获取资源文件路径
- (NSString *)getResourcesFile:(NSString *)fileName
{
    return [[NSBundle mainBundle] pathForResource:fileName ofType:nil];
}

//根据文件名获取文件路径
- (NSString *)getLocalFilePath:(NSString *) fileName
{
    NSString * path = [NSHomeDirectory() stringByAppendingPathComponent:@"/Documents"];
    return [NSString stringWithFormat:@"%@/%@",path,fileName];
}

//根据文件路径获取文件名称
- (NSString *)getFileNameByPath:(NSString *)filepath
{
    NSArray *array=[filepath componentsSeparatedByString:@"/"];
    if (array.count==0) {
        return filepath;
    }
    return [array objectAtIndex:array.count-1];
}


//根据路径获取该路径下所有目录
- (NSArray *)getAllFileByName:(NSString *)path
{
    NSFileManager *defaultManager = [NSFileManager defaultManager];
    NSArray *array = [defaultManager contentsOfDirectoryAtPath:path error:nil];
    return array;
}

// 根据路径获取文件目录下所有文件
- (NSArray *)getAllFloderByName:(NSString *)path
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    NSArray * fileAndFloderArr = [self getAllFileByName:path];
    
    NSMutableArray *dirArray = [[NSMutableArray alloc] init];
    BOOL isDir = NO;
    //在上面那段程序中获得的fileList中列出文件夹名
    for (NSString * file in fileAndFloderArr){
        
        NSString *paths = [path stringByAppendingPathComponent:file];
        [fileManager fileExistsAtPath:paths isDirectory:(&isDir)];
        if (isDir) {
            [dirArray addObject:file];
        }
        isDir = NO;
    }
    return dirArray;
}

//获取文件及目录的大小
- (float)sizeOfDirectory:(NSString *)dir{
    NSDirectoryEnumerator *direnum = [[NSFileManager defaultManager] enumeratorAtPath:dir];
    NSString *pname;
    int64_t s=0;
    while (pname = [direnum nextObject]){
        //NSLog(@"pname   %@",pname);
        NSDictionary *currentdict=[direnum fileAttributes];
        NSString *filesize=[NSString stringWithFormat:@"%@",[currentdict objectForKey:NSFileSize]];
        NSString *filetype=[currentdict objectForKey:NSFileType];
        
        if([filetype isEqualToString:NSFileTypeDirectory]) continue;
        s=s+[filesize longLongValue];
    }
    return s*1.0;
}

//重命名文件或目录
- (BOOL)renameFileName:(NSString *)oldName toNewName:(NSString *)newName
{
    
    BOOL result = NO;
    NSError * error = nil;
//    result = [[NSFileManager defaultManager] moveItemAtPath:[kDSRoot stringByAppendingPathComponent:oldName] toPath:[kDSRoot stringByAppendingPathComponent:newName] error:&error];
//
    if (error){
        NSLog(@"重命名失败：%@",[error localizedDescription]);
    }
    
    return result;
}

//读取文件
- (NSData *)readFileContent:(NSString *)filePath{
    
    return [[NSFileManager defaultManager] contentsAtPath:filePath];
}

//保存文件
- (BOOL)saveToDirectory:(NSString *)path data:(NSData *)data name:(NSString *)newName

{
    NSString * resultPath = [path stringByAppendingPathComponent:[NSString stringWithFormat:@"/%@",newName]];
    return [[NSFileManager defaultManager] createFileAtPath:resultPath contents:data attributes:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
