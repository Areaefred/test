//
//  FirstViewController.m
//  test
//
//  Created by weiheng on 14-5-27.
//  Copyright (c) 2014年 weiheng. All rights reserved.
//

#import "FirstViewController.h"
#import "Mother.h"
#import "Nurse.h"
#import "Job.h"

@interface FirstViewController (){//必须要有花括号
NSDate *NowTime ;
    
    Nurse *nurse;
    Mother *mother;
    
    
}
@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //为按钮添加事件
    //[self.UIButton_Update addTarget:self action:(timerAction) forControlEvents:<#(UIControlEvents)#>
    NSTimer *myTimer;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (IBAction)UIButton_update:(id)sender {
    NowTime = [NSDate date];
    NSLog(@"%@",NowTime);
    //self.UItextView_Time.text=NowTime;
    //[NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(update) userInfo:nil repeats:YES];
    //NSLog(@"%@",NowTime);
    NSCalendar *c = [NSCalendar currentCalendar];
    
    NSRange days = [c rangeOfUnit:NSDayCalendarUnit inUnit:NSMonthCalendarUnit forDate:NowTime];
    
    //self.myTimer=[NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(timerAction:) userInfo:nil repeats:YES];
    //[testObject release];
    NSLog(@"Invoke release to testObject!");
    
}

- (void)timerAction:(NSTimer*)timer
{
  NSLog(@"Hi, Timer Action for instance %@", self);
}





- (IBAction)UIButton_TouchUpInside:(id)sender {
    
    NSString *name=[[NSString alloc] initWithFormat:@"小花"];
    
    nurse=[[Nurse alloc] init];//代理人 nurse
    
    mother=[[Mother alloc] initWithName:name delegate:nurse];//这样就将代理人传入mother对象中，这样mother对象便可以通过nurse来完成她自己不能做的事情了。
    
    //[name ];
    [NSTimer scheduledTimerWithTimeInterval:1 target:mother selector:@selector(delagateThings) userInfo:nil repeats:YES];  //调用机制，mother 每秒调用一次方法delagateThings；YES:反复重复 NO:只执行1次  ?userInfo
    
    
    //[[NSRunLoop currentRunLoop] run];  //让程序一直运行下去，保证上面的调用可以一直进行 貌似没这句也可以
    
    //[morther ];
    
    //[fengjie release];
    
}



@end
