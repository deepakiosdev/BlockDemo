//
//  AppDelegate.m
//  BlockDemo
//
//  Created by Deepak on 15/03/14.
//  Copyright (c) 2014 Deepak. All rights reserved.
//

#import "AppDelegate.h"
#import "Car.h"
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
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    Car *theCar = [[Car alloc] init];
    
    // Drive for awhile with constant speed of 5.0 m/s
    NSLog(@"111111111111111111111");

    [theCar driveForDuration:10.0
           withVariableSpeed:^(double time) {
               NSLog(@"44444444444----time:%f",time);
               return 5.0;
           } steps:100];
    NSLog(@"The car has now driven %.2f meters", theCar.odometer);
    
    // Start accelerating at a rate of 1.0 m/s^2
    [theCar driveForDuration:10.0
           withVariableSpeed:^(double time) {
               NSLog(@"time:%f",time);
               return time + 5.0;
           } steps:100];
    NSLog(@"The car has now driven %.2f meters", theCar.odometer);

}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
