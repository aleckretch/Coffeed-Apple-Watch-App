//
//  ExtensionDelegate.m
//  Watch Extension
//
//  Created by Alec Kretch on 1/24/16.
//  Copyright © 2016 Alec Kretch. All rights reserved.
//

#import "ExtensionDelegate.h"

@implementation ExtensionDelegate

- (void)applicationDidFinishLaunching {
    // Perform any final initialization of your application.
    [Parse setApplicationId:@"lvt8kDBA88NkZJSAl2mikhHivcWJ9zYmWDBuCWZ3" clientKey:@"P0sil7wGjtdFMXRlZMmilT3XPaW9pPy3ub470muL"];
}

- (void)applicationDidBecomeActive {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillResignActive {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, etc.
}

@end
