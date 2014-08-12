//
//  Mother.m
//  test
//
//  Created by weiheng on 14-6-1.
//  Copyright (c) 2014年 weiheng. All rights reserved.
//

#import "Mother.h"
#import "Nurse.h"



@implementation Mother
-(id)initWithName:(NSString *)_name delegate:(id)_delagete

{
    
    self=[super init];
    
    if (self) {
        
        if (name!=_name) {
            
            //[name release];
            
            name=[_name copy];
            
            //[delegate release];
            
            delegate=_delagete;
           //delegate=[_delagete retain];//上面行和这行作用是一样的，只是可以不可以是在ARC里运行
            
        }
        
    }
    
    return self;
    
}

@synthesize name;

-(void)dealloc

{
    
    //[name release];
    
    //[delegate release];
    
    NSLog(@"host is dealloc");
    
}

-(void)delagateThings//:(int)test:i

{
    NSLog(@"Name=%@,Function=delagateThings.",name);
    ;
    for (int i=1; i<5; )
    {
        switch (i) {
                
            case 1:
                
                [delegate takeEat];
                 NSLog(@"--");
                
                break;
                
            case 2:
                
                [delegate takePlay];
                 NSLog(@"----");
                
                break;
                
            case 3:
                
                [delegate takeShower];
                 NSLog(@"------");
                
                break;
                
            case 4:
                
                [delegate takeSleep];
                 NSLog(@"--------");
                
                break;
                
            default:
                
                break;
        }
        i++;
    }
   

    
}

- (void) fooOneIput:(NSString*) first {
    NSLog(@"Logs %@", first);
}


@end
