//
//  InterfaceController.h
//  Coffeed
//
//  Created by Alec Kretch on 1/23/16.
//  Copyright © 2016 Alec Kretch. All rights reserved.
//

@import CoreLocation;
#import <Foundation/Foundation.h>
#import <Parse/Parse.h>
#import <WatchKit/WatchKit.h>

#import "Constants.h"

@interface InterfaceController : WKInterfaceController <CLLocationManagerDelegate>

@property (retain, nonatomic) IBOutlet CLLocationManager *locationManager;
@property (retain, nonatomic) IBOutlet PFGeoPoint *currentPoint;
@property (retain, nonatomic) IBOutlet WKInterfaceButton *btnNext;
@property (retain, nonatomic) IBOutlet WKInterfaceButton *btnPrev;
@property (retain, nonatomic) IBOutlet WKInterfaceImage *imgCafe;
@property (retain, nonatomic) IBOutlet WKInterfaceLabel *lblDistance;
@property (retain, nonatomic) IBOutlet WKInterfaceLabel *lblRating;
@property (retain, nonatomic) IBOutlet WKInterfaceLabel *lblTitle;

@property (retain, nonatomic) NSArray *arrayCafes;
@property (assign, nonatomic) int currentPage;

- (IBAction)onTapButtonNext:(id)sender;
- (IBAction)onTapButtonPrev:(id)sender;
- (IBAction)onTapButtonGetAddress:(id)sender;
- (IBAction)onTapButtonIgnoreCafe:(id)sender;

@end
