//
//  AppDelegate.m
//  Advertisment
//
//  Created by bb on 1/25/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        self.tbController = [[GCTabBarController alloc] initWithNibName:@"Advertisment_iPhone" bundle:nil];
    } else {
        self.tbController = [[GCTabBarController alloc] initWithNibName:@"Advertisment_iPad" bundle:nil];
    }
    ExchangeCenter *exchangeCenter = [[ExchangeCenter alloc] initWithNibName:@"ExchangeCenter" bundle:nil];
	ActivityCenter *activityCenter = [[ActivityCenter alloc] initWithNibName:@"ActivityCenter" bundle:nil];
	UserCenter *userCenter = [[UserCenter alloc] initWithNibName:@"UserCenter" bundle:nil];
	MessageCenter *messageCenter = [[MessageCenter alloc] initWithNibName:@"MessageCenter" bundle:nil];
	ConfigCenter *configCenter = [[ConfigCenter alloc] initWithNibName:@"ConfigCenter" bundle:nil];
    UINavigationController *nvEC = [[UINavigationController alloc] initWithRootViewController:exchangeCenter];
    UINavigationController *nvAC = [[UINavigationController alloc] initWithRootViewController:activityCenter];
    UINavigationController *nvUC = [[UINavigationController alloc] initWithRootViewController:userCenter];
    UINavigationController *nvMC = [[UINavigationController alloc] initWithRootViewController:messageCenter];
    UINavigationController *nvCC = [[UINavigationController alloc] initWithRootViewController:configCenter];
    
//	NSArray *ctrlArr = [NSArray arrayWithObjects:exchangeCenter,activityCenter,userCenter,messageCenter,configCenter,nil];
	NSArray *ctrlArr = [NSArray arrayWithObjects:nvEC,nvAC,nvUC,nvMC,nvCC,nil];
    
	NSMutableDictionary *imgDic = [NSMutableDictionary dictionaryWithCapacity:3];
	[imgDic setObject:[UIImage imageNamed:@"1off.png"] forKey:@"Default"];
    [imgDic setObject:[UIImage imageNamed:@"1on.png"] forKey:@"Highlighted"];
	[imgDic setObject:[UIImage imageNamed:@"1on.png"] forKey:@"Seleted"];
	NSMutableDictionary *imgDic2 = [NSMutableDictionary dictionaryWithCapacity:3];
	[imgDic2 setObject:[UIImage imageNamed:@"2off.png"] forKey:@"Default"];
    [imgDic2 setObject:[UIImage imageNamed:@"2on.png"] forKey:@"Highlighted"];
	[imgDic2 setObject:[UIImage imageNamed:@"2on.png"] forKey:@"Seleted"];
	NSMutableDictionary *imgDic3 = [NSMutableDictionary dictionaryWithCapacity:3];
	[imgDic3 setObject:[UIImage imageNamed:@"3off.png"] forKey:@"Default"];
    [imgDic3 setObject:[UIImage imageNamed:@"3on.png"] forKey:@"Highlighted"];
	[imgDic3 setObject:[UIImage imageNamed:@"3on.png"] forKey:@"Seleted"];
	NSMutableDictionary *imgDic4 = [NSMutableDictionary dictionaryWithCapacity:3];
	[imgDic4 setObject:[UIImage imageNamed:@"4off.png"] forKey:@"Default"];
    [imgDic4 setObject:[UIImage imageNamed:@"4on.png"] forKey:@"Highlighted"];
	[imgDic4 setObject:[UIImage imageNamed:@"4on.png"] forKey:@"Seleted"];
	NSMutableDictionary *imgDic5 = [NSMutableDictionary dictionaryWithCapacity:3];
	[imgDic5 setObject:[UIImage imageNamed:@"5off.png"] forKey:@"Default"];
    [imgDic5 setObject:[UIImage imageNamed:@"5on.png"] forKey:@"Highlighted"];
	[imgDic5 setObject:[UIImage imageNamed:@"5on.png"] forKey:@"Seleted"];
	
	NSArray *imgArr = [NSArray arrayWithObjects:imgDic,imgDic2,imgDic3,imgDic4,imgDic5,nil];
	GCTabBarController *rootview = (GCTabBarController *)self.tbController;
    rootview = [rootview initWithViewControllers:ctrlArr imageArray:imgArr];
	[rootview setTabBarTransparent:YES];
	[self.window addSubview:rootview.view];//rootview.view];
    [self.window makeKeyAndVisible];    return YES;
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
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
