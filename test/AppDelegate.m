//
//  AppDelegate.m
//  test
//
//  Created by weiheng on 14-5-27.
//  Copyright (c) 2014年 weiheng. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.

    [self testNonRepeatTimer];

}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
    [self testNonRepeatTimer];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)testNonRepeatTimer
{
    NSLog(@"Test retatin target for non-repeat timer!");
    FirstViewController *testObject = [[FirstViewController alloc] init];
    [NSTimer scheduledTimerWithTimeInterval:3 target:testObject selector:@selector(timerAction:) userInfo:nil repeats:NO];
    //[testObject release];
    NSLog(@"Invoke release to testObject!");
}

//- (void)testRepeatTimer
//{
//    NSLog(@"Test retain target for repeat Timer");
//    FirstViewController *testObject2 = [[FirstViewController alloc] init];
//    [NSTimer scheduledTimerWithTimeInterval:1 target:testObject2 selector:@selector(timerAction:) userInfo:nil repeats:YES];
//    //[testObject2 release];
//    NSLog(@"Invoke release to testObject2!");
//}


@end
