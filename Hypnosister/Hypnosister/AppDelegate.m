//
//  AppDelegate.m
//  Hypnosister
//
//  Created by Mo Li on 3/16/18.
//  Copyright © 2018 Mo Li. All rights reserved.
//

#import "AppDelegate.h"
#import "BNRHypnosisView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"Hello World!");

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //-----------------------------------------------------------------------------------------
    //解决该问题的代码
    NSArray *windows = [[UIApplication sharedApplication] windows];
    for(UIWindow *window in windows) {
        if(window.rootViewController == nil){
            UIViewController *vc = [[UIViewController alloc]initWithNibName:nil
                                                                     bundle:nil];
            window.rootViewController = vc;
        }
    }
    //解决该问题的代码
    //----------------------------------------------------------------------------------------
    
    CGRect screenRects = self.window.bounds;
    CGRect bigRect = screenRects;
    bigRect.size.width *= 2.0;
//    bigRect.size.height *= 2.0;
    
    // Create a screen-sized scroll view and add it to the window
    UIScrollView *scollView = [[UIScrollView alloc] initWithFrame:screenRects];
    scollView.pagingEnabled = NO;
    [self.window addSubview:scollView];
    
    // Create a super-sized hypnosis view and add it to the scoll view
//    screenRects.origin.x += screenRects.size.width / 2.0;
    BNRHypnosisView *hypnosisView = [[BNRHypnosisView alloc] initWithFrame:screenRects];
    [scollView addSubview:hypnosisView];
    
    // Add a second screen-sized hypnosis view
    screenRects.origin.x += screenRects.size.width;

//    screenRects.origin.x -= screenRects.size.width;
    BNRHypnosisView *anotherView = [[BNRHypnosisView alloc] initWithFrame:screenRects];
    [scollView addSubview:anotherView];
    
    // Tell the scroll viewhow big its content area is
    scollView.contentSize = bigRect.size;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
