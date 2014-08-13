//
//  BasicKnowledgeAccumulation.m
//  TEST0812
//
//  Created by weiheng on 14-8-12.
//  Copyright (c) 2014年 weiheng. All rights reserved.
//

#import "BasicKnowledgeAccumulation.h"

@implementation BasicKnowledgeAccumulation

@end
/*
 //NSMutableDictionary的使用方法
 @property(nonatomic,strong)NSMutableDictionary* dataSourceDic;
 self.dataSourceDic=[NSMutableDictionary dictionaryWithCapacity:2];
 */

 /*
 //生成1024*1024*2的数据以测试APP间通过URL方式转递数据的大小
 unsigned char* pemdata = NULL;
 unsigned long pemdatalen = 1024*1024;
 pemdata = (unsigned char*)malloc(pemdatalen);
 memset(pemdata, 0x65, pemdatalen);
 NSString * strTmp = @"";
 for (int i=0; i<pemdatalen; i++) {
 strTmp = [NSString stringWithFormat:@"%@%@",strTmp,[NSString stringWithFormat:@"%02x",pemdata[i]&0xff]];
 }
 free(pemdata);
 NSLog(@"strTmp=%@",strTmp);
 */
 
 /*
 
UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"第一次"
                                              message:@"进入App"
                                             delegate:self
                                    cancelButtonTitle:@"我知道了"
                                    otherButtonTitles:nil];
[alert show];

*/






