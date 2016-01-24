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

@property (retain, nonatomic) IBOutlet WKInterfaceImage *imgCafe;
@property (retain, nonatomic) IBOutlet WKInterfaceButton *btnNext;
@property (retain, nonatomic) IBOutlet WKInterfaceButton *btnPrev;

@end
