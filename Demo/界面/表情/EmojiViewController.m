//
//  EmojiViewController.m
//  Demo
//
//  Created by 王敏欣 on 2019/2/27.
//  Copyright © 2019年 test. All rights reserved.
//

#import "EmojiViewController.h"

@interface EmojiViewController ()

@end

@implementation EmojiViewController

- (void)stringReplace{
    NSString *text=@"11[微笑]11[色]2222";
    NSArray *arr  = @[@"[微笑]",@"[色]",@"[发呆]",@"[抽烟]",@"[抠鼻]",@"[哭]",@"[发怒]",@"[呲牙]",@"[睡]",@"[害羞]",@"[调皮]",@"[晕]",@"[衰]",@"[闭嘴]",@"[指点]",@"[关注]",@"[搞定]",@"[胜利]",@"[无奈]",@"[打脸]",@"msg_del",@"[大笑]",@"[哈欠]",@"[害怕]",@"[喜欢]",@"[困]",@"[疑问]",@"[伤心]",@"[鼓掌]",@"[得意]",@"[捂嘴]",@"[惊恐]",@"[思考]",@"[吐血]",@"[卖萌]",@"[嘘]",@"[生气]",@"[尴尬]",@"[笑哭]",@"[口罩]",@"[斜眼]",@"msg_del",@"[酷]",@"[脸红]",@"[大叫]",@"[眼泪]",@"[见钱]",@"[嘟]",@"[吓]",@"[开心]",@"[想哭]",@"[郁闷]",@"[互粉]",@"[赞]",@"[拜托]",@"[唇]",@"[粉]",@"[666]",@"[玫瑰]",@"[黄瓜]",@"[啤酒]",@"[无语]",@"msg_del",@"[纠结]",@"[吐舌]",@"[差评]",@"[飞吻]",@"[再见]",@"[拒绝]",@"[耳机]",@"[抱抱]",@"[嘴]",@"[露牙]",@"[黄狗]",@"[灰狗]",@"[蓝狗]",@"[狗]",@"[脸黑]",@"[吃瓜]",@"[绿帽]",@"[汗]",@"[摸头]",@"[阴险]",@"msg_del",@"[擦汗]",@"[瞪眼]",@"[疼]",@"[鬼脸]",@"[拇指]",@"[亲]",@"[大吐]",@"[高兴]",@"[敲打]",@"[加油]",@"[吐]",@"[握手]",@"[18禁]",@"[菜刀]",@"[威武]",@"[给力]",@"[爱心]",@"[心碎]",@"[便便]",@"[礼物]",@"msg_del",@"[生日]",@"[喝彩]",@"[雷]",@"345",@"345",@"345",@"345",@"345",@"345",@"345",@"345",@"345",@"345",@"345",@"345",@"345",@"345",@"345",@"345",@"345",@"msg_del"];
    
    for (NSString *item in arr) {
        text = [text stringByReplacingOccurrencesOfString:item withString:@"[表情]"];
    }
    NSLog(@"%@",text);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}



@end
