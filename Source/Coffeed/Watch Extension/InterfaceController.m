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
    
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    [self performQueryForClosestCafes];
}

- (void)getCurrentLocation {
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    [self.locationManager requestAlwaysAuthorization];
    [self.locationManager requestWhenInUseAuthorization];
    
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    NSLog(@"NewLocation %f %f", [locations lastObject].coordinate.latitude, [locations lastObject].coordinate.longitude);
    [self.locationManager stopUpdatingLocation];
    
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    //Error, do something?
    
}

- (void)performQueryForClosestCafes {
    //PFQuery *query = [PFQuery queryWithClassName:@"Cafes"];
    [self getCurrentLocation];
    
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



