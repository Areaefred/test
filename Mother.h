//
//  Mother.h
//  test
//
//  Created by weiheng on 14-6-1.
//  Copyright (c) 2014年 weiheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Job.h"

//@class Nurse;

@interface Mother : NSObject

{
    
    NSString *name;
    
    id<Job> delegate;   //此处声明一个代理人，从而mother可以让代理人完成需要代理的事情  //此处尚不懂
    
}

-(id)initWithName:(NSString *)_name delegate:(id<Job>)_delagete;  //传入代理人

@property(nonatomic,copy)NSString *name;

-(void)delagateThings;// 被代理的事情


@end
