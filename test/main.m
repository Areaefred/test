//
//  main.m
//  test
//
//  Created by weiheng on 14-5-27.
//  Copyright (c) 2014年 weiheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Mother.h"
#import "Nurse.h"
#import "Job.h"

int (^oneFrom)(int) = ^(int anInt) {
    return anInt - 1;
};

//函数返回值(^函数名称)(变量1类型,变量2类型,........)=^(变量1类型 变量1名称,变量1类型 变量2名称,........){函数体}
float(^aBlock)(int,int) = ^( int num1,int num2) {
    return (float)(num1+num2);
};

float (^distanceTraveled) (float, float, float) =^(float startingSpeed, float acceleration, float time) {
    float distance = (startingSpeed * time) + (0.5 * acceleration * time * time);
    return distance;
};

int main(int argc, char * argv[])
{
    @autoreleasepool {
        
        
        NSLog(@"%d,%f,%f", oneFrom(51),aBlock(51,49),distanceTraveled(1,2,3));
        
        NSString *name=[[NSString alloc] initWithFormat:@"小花"];
        Nurse *nurse=[[Nurse alloc] init];//代理人 nurse
        Mother *mother=[[Mother alloc] initWithName:name delegate:nurse];//这样就将代理人传入mother对象中，这样mother对象便可以通过nurse来完成她自己不能做的事情了。
        
        //[name ];
        [NSTimer scheduledTimerWithTimeInterval:1 target:mother selector:@selector(delagateThings) userInfo:nil repeats:YES];  //调用机制，mother 每秒调用一次方法delagateThings；YES:反复重复 NO:只执行1次  ?userInfo
        
        
        //[[NSRunLoop currentRunLoop] run];  //让程序一直运行下去，保证上面的调用可以一直进行 貌似没这句也可以
        
        //[mother ];
        
        //[fengjie release];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

