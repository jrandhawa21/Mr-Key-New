//
//  AppDelegate.m
//  Mr.Key New File
//
//  Created by JOHNNY RANDHAWA on 4/24/15.
//  Copyright (c) 2015 JOHNNY RANDHAWA. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
#import <Parse/Parse.h>
#import "MainViewController.h"
#import "Stripe.h"
#import "RESideMenu.h"
#import "MenuViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate 


NSString * const StripePublishableKey = @"pk_test_UE8BywgUosEjRd0ZbwHuzJBy";



// ...
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    // [Optional] Power your app with Local Datastore. For more info, go to
    // https://parse.com/docs/ios_guide#localdatastore/iOS
    [Stripe setDefaultPublishableKey:StripePublishableKey];

    
    [Parse enableLocalDatastore];
    
    // Initialize Parse.
    [Parse setApplicationId:@"jEK6ZwIBdoEeH8fg8zY4KrFubQj1CNehssEa3gED"
                  clientKey:@"lvSU0karsFzOoj48y5IZfj2dbCDq808aSzmnPnaQ"];
    
    // [Optional] Track statistics around application opens.
    [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    // ...
    MenuViewController *menuVC = [[MenuViewController alloc] init];
    
    MainViewController *mainVC = [[MainViewController alloc] init];
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:mainVC];
    
    RESideMenu *sideMenuViewController = [[RESideMenu alloc] initWithContentViewController:navVC
                                                                    leftMenuViewController:menuVC
                                                                   rightMenuViewController:nil];
    sideMenuViewController.backgroundImage = nil;
    
    
    
    self.window.rootViewController =  sideMenuViewController;

    

    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
    
}





- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
