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
 
 
    UILabel *label;


    label=[[UILabel alloc]init];
    label.text=@"第二页";
    label.frame=CGRectMake(135, 20, 60, 40);
    [self.view addSubview:label];



    label=[[UILabel alloc]init];
    label.text=@"本页由代码编写";
    label.frame=CGRectMake(110, 70, 120, 40);
    [self.view addSubview:label];
 
 
    UIButton *btn;
    btn=[[UIButton alloc]init];
    [btn setTitle:@"测试二维数组" forState:UIControlStateNormal] ;
    btn.frame=CGRectMake(20, 120, 150, 30);
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btn1do:) forControlEvents:UIControlEventTouchUpInside];

    btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor=[UIColor whiteColor];
    [btn.layer setCornerRadius:5];
 
    [btn setTitle:@"返回上一页" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];

    //btn setAttributedTitle:<#(NSAttributedString *)#> forState:<#(UIControlState)#>
    btn.tintColor=[UIColor blackColor];
    btn.frame=CGRectMake(100, 420, 120, 30);
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btn2do:) forControlEvents:UIControlEventTouchUpInside];
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
 
UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"标题" message:@"内容"  delegate:self  cancelButtonTitle:@"确定" otherButtonTitles:nil];
  [alert show];
  //设置tag
  alert.tag==2;
  
  // 设置显示样式
  [alert setAlertViewStyle:UIAlertViewStylePlainTextInput];//为明文
  
  UITextField *textField = [alert textFieldAtIndex:0];注意取出来 就可以操作alert的该项
  
  // 设置输入键盘样式
  //textField.keyboardType = UIKeyboardTypeNumberPad;//设定某个输入框的输入键盘格式
  //textField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;//设定输入键盘格式
  textField.keyboardType = UIKeyboardTypeASCIICapable;
  
[alert show];

  
  [self.tv1.layer setCornerRadius:10];
  
  //设置按钮等控件的圆角
  [self.ChangeUsrPwd.layer setCornerRadius:10];
  [self.LogOut.layer setCornerRadius:10];
  
  
  

  
  
  #pragma mark  代理UIAlertViewDelegate方法，判断那个按钮被点击
  - (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
  {
  // 获得当前索引按钮的标题
  NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
  // 根据标题判断那个按钮被单击
  if ([buttonTitle isEqualToString:@"Cancel"]||[buttonTitle isEqualToString:@"取消"])
  {
  //[self.view removeFromSuperview];
  return;
  }
  else if([buttonTitle isEqualToString:@"确定"])
  {
  // 获得索引为0的UITextField
  UITextField *textField = [alertView textFieldAtIndex:0];
  }
  }
  }
  
   NSDictionary* Sign_item=@{@"SignTime":nowTime,@"Content":str_content,@"Sign":Sign};
*/






