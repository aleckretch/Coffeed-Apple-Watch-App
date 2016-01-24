//
//  InterfaceController.h
//  Coffeed
//
//  Created by Alec Kretch on 1/23/16.
//  Copyright © 2016 Alec Kretch. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController

@property (retain, nonatomic) IBOutlet WKInterfaceButton *btnNext;
@property (retain, nonatomic) IBOutlet WKInterfaceButton *btnPrev;
@property (retain, nonatomic) IBOutlet WKInterfaceImage *imgCafe;
@property (retain, nonatomic) IBOutlet WKInterfaceImage *imgStar1;
@property (retain, nonatomic) IBOutlet WKInterfaceImage *imgStar2;
@property (retain, nonatomic) IBOutlet WKInterfaceImage *imgStar3;
@property (retain, nonatomic) IBOutlet WKInterfaceImage *imgStar4;
@property (retain, nonatomic) IBOutlet WKInterfaceImage *imgStar5;
@property (retain, nonatomic) IBOutlet WKInterfaceLabel *lblDistance;
@property (retain, nonatomic) IBOutlet WKInterfaceLabel *lblRating;

@end
