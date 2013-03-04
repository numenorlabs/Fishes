//
//  AppDelegate.m
//  Fishes
//
//  Created by David on 3/2/13.
//  Copyright (c) 2013 David Farber. All rights reserved.
//

#import "AppDelegate.h"
#import "PageViewController.h"
#import "FishListViewController.h"


@interface AppDelegate ()

@property (strong, nonatomic, readwrite) PageViewController *mainViewController;

@end


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    FishListViewController *firstList = [FishListViewController
        newWithFishes:@[@"One Fish", @"Two Fish"]
        title:@"These Fish"];
    FishListViewController *secondList = [FishListViewController
        newWithFishes:@[@"Red Fish", @"Blue Fish"]
        title:@"Those Fish"];
    self.mainViewController = [PageViewController newWithControllers:@[firstList, secondList]];

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = self.mainViewController;
    [self.window makeKeyAndVisible];

    return YES;
}

@end
