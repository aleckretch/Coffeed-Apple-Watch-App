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
    [self.imgCafe setWidth:[WKInterfaceDevice currentDevice].screenBounds.size.width-40-2];
    [self.imgCafe setHeight:[WKInterfaceDevice currentDevice].screenBounds.size.height-70];
    [self.lblDistance setWidth:[WKInterfaceDevice currentDevice].screenBounds.size.width/2];
    [self.lblRating setWidth:[WKInterfaceDevice currentDevice].screenBounds.size.width/2];
    [self.btnNext setEnabled:NO];
    [self.btnPrev setEnabled:NO];
    [self.lblTitle setText:@"Finding Cafes..."];
    self.currentPage = 1;
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    [self getCurrentLocation];

}

- (void)setValuesForPage:(int)page {
    PFObject *cafe = self.arrayCafes[page-1];
    if (page == 1)
    {
        [self.btnPrev setEnabled:NO];
    }
    else
    {
        [self.btnPrev setEnabled:YES];
    }
    if (page == CAFE_LIMIT)
    {
        [self.btnNext setEnabled:NO];
    }
    else
    {
        [self.btnNext setEnabled:YES];
    }
    NSString *title = [cafe objectForKey:@"title"];
    [self.lblTitle setText:title];
    PFFile *imageFile = [cafe objectForKey:@"image"];
    UIImage *image = [UIImage imageWithData:imageFile.getData];
    [self.imgCafe setImage:image];
    NSNumber *ratingNumber = [cafe objectForKey:@"rating"];
    NSString *rating = [NSString stringWithFormat:@"%.1f stars", [ratingNumber doubleValue]];
    [self.lblRating setText:rating];
    PFGeoPoint *geoPoint = [cafe objectForKey:@"geoPoint"];
    double milesAway = [self.currentPoint distanceInMilesTo:geoPoint];
    NSString *distance = [NSString stringWithFormat:@"%.1f miles", milesAway];
    [self.lblDistance setText:distance];
    
}

- (void)getCurrentLocation {
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    [self.locationManager requestAlwaysAuthorization];
    [self.locationManager requestWhenInUseAuthorization];
    [self.locationManager requestLocation];
    
}

- (void)getClosestCafesToLocation:(PFGeoPoint *)currentPoint {
    PFQuery *query = [PFQuery queryWithClassName:@"Cafes"];
    [query whereKey:@"geoPoint" nearGeoPoint:currentPoint];
    [query setLimit:CAFE_LIMIT];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSArray *arrayIgnoreIds = [defaults arrayForKey:@"ignoreIds"];
    if (arrayIgnoreIds.count > 0)
    {
        [query whereKey:@"objectId" notContainedIn:arrayIgnoreIds];
    }
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error && objects.count > 0)
        {
            NSMutableArray *closeCafes = [NSMutableArray array];
            for (int i=0; i<objects.count; i++)
            {
                PFObject *cafe = objects[i];
                [closeCafes addObject:cafe];
            }
            self.arrayCafes = closeCafes;
            [self setValuesForPage:self.currentPage];
        }
    }];
    
}

- (IBAction)onTapButtonNext:(id)sender {
    [self setValuesForPage:++self.currentPage];
    
}

- (IBAction)onTapButtonPrev:(id)sender {
    [self setValuesForPage:--self.currentPage];
    
}

- (IBAction)onTapButtonGetAddress:(id)sender {
    PFObject *cafe = self.arrayCafes[self.currentPage];
    WKAlertAction *alert = [WKAlertAction actionWithTitle:@"OK" style:WKAlertActionStyleDefault handler:^{
        //no actions
    }];
    NSArray *actions = @[alert];
    NSString *address = [cafe objectForKey:@"address"];
    [self presentAlertControllerWithTitle:@"Address" message:address preferredStyle:WKAlertControllerStyleAlert actions:actions];
    
}

- (IBAction)onTapButtonIgnoreCafe:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSArray *arrayIgnoreIds = [defaults arrayForKey:@"ignoreIds"];
    PFObject *cafe = self.arrayCafes[self.currentPage-1];
    if (![arrayIgnoreIds containsObject:cafe.objectId])
    {
        NSMutableArray *mutableIgnoreIds = [[NSMutableArray alloc] initWithArray:arrayIgnoreIds];
        [mutableIgnoreIds addObject:cafe.objectId];
        [defaults setObject:mutableIgnoreIds forKey:@"ignoreIds"];
        [defaults synchronize];
        
        WKAlertAction *alert = [WKAlertAction actionWithTitle:@"OK" style:WKAlertActionStyleDefault handler:^{
            //no actions
        }];
        NSArray *actions = @[alert];
        [self presentAlertControllerWithTitle:@"Ignored!" message:@"This cafe will never appear for you again." preferredStyle:WKAlertControllerStyleAlert actions:actions];
    }

}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    self.currentPoint = [PFGeoPoint geoPointWithLatitude:[locations lastObject].coordinate.latitude longitude:[locations lastObject].coordinate.longitude];
    [self getClosestCafesToLocation:self.currentPoint];
    [self.locationManager stopUpdatingLocation];
    
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    //Error, do something?
    
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



