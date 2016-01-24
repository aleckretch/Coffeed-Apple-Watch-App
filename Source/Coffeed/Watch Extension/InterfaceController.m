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
    [self.imgCafe setWidth:[WKInterfaceDevice currentDevice].screenBounds.size.width-40-4];
    [self.imgCafe setHeight:[WKInterfaceDevice currentDevice].screenBounds.size.height-70];
    [self.lblDistance setWidth:[WKInterfaceDevice currentDevice].screenBounds.size.width/2];
    [self.lblRating setWidth:[WKInterfaceDevice currentDevice].screenBounds.size.width/2];
    UIImage *imgStar = [UIImage imageNamed:@"star.png"];
    UIImage *imgStarHalf = [UIImage imageNamed:@"star_half.png"];
    [self.imgStar1 setWidth:[WKInterfaceDevice currentDevice].screenBounds.size.width/11];
    [self.imgStar2 setWidth:[WKInterfaceDevice currentDevice].screenBounds.size.width/11];
    [self.imgStar3 setWidth:[WKInterfaceDevice currentDevice].screenBounds.size.width/11];
    [self.imgStar4 setWidth:[WKInterfaceDevice currentDevice].screenBounds.size.width/11];
    [self.imgStar5 setWidth:[WKInterfaceDevice currentDevice].screenBounds.size.width/11];
    [self.imgStar1 setHeight:[WKInterfaceDevice currentDevice].screenBounds.size.width/11];
    [self.imgStar2 setHeight:[WKInterfaceDevice currentDevice].screenBounds.size.width/11];
    [self.imgStar3 setHeight:[WKInterfaceDevice currentDevice].screenBounds.size.width/11];
    [self.imgStar4 setHeight:[WKInterfaceDevice currentDevice].screenBounds.size.width/11];
    [self.imgStar5 setHeight:[WKInterfaceDevice currentDevice].screenBounds.size.width/11];
    [self.imgStar1 setImage:imgStar];
    [self.imgStar2 setImage:imgStar];
    [self.imgStar3 setImage:imgStar];
    [self.imgStar4 setImage:imgStarHalf];
    [self.imgStar5 setImage:nil];
    
    
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



