//
//  MasterViewController.h
//  CoffeedData
//
//  Created by Alec Kretch on 1/23/16.
//  Copyright © 2016 Alec Kretch. All rights reserved.
//

#import <Parse/Parse.h>
#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;


@end

