//
//  InterfaceController.m
//  Coffeed
//
//  Created by Alec Kretch on 1/23/16.
//  Copyright © 2016 Alec Kretch. All rights reserved.
//

#import "InterfaceController.h"

@interface InterfaceController ()

@end

@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    [self.imgCafe setImage:[UIImage imageNamed:@"dummy.jpg"]];
    [self.imgCafe setWidth:[WKInterfaceDevice currentDevice].screenBounds.size.width];
    [self.imgCafe setHeight:[WKInterfaceDevice currentDevice].screenBounds.size.height-64];
    [self.btnPrev setWidth:[WKInterfaceDevice currentDevice].screenBounds.size.width/2];
    [self.btnNext setWidth:[WKInterfaceDevice currentDevice].screenBounds.size.width/2];
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



