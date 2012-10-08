//
//  WhereamiViewController.m
//  Whereami
//
//  Created by Carlo Andaya on 10/4/12.
//  Copyright (c) 2012 Carlo Andaya. All rights reserved.
//

#import "WhereamiViewController.h"

@interface WhereamiViewController ()

@end

@implementation WhereamiViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Create location manager object
        locationManager = [[CLLocationManager alloc] init];
        
        // set the delegate of location manager to the view controller
        [locationManager setDelegate:self];
        
        // And we want it to be as accurate as possible
        // regardless of how much time/power it takes
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        [locationManager setDistanceFilter:50];
        
        // Tell our manager to start looking for its location immediately
        [locationManager startUpdatingLocation];
        
        // Tell our manager to update its headings
        if ([CLLocationManager headingAvailable]) {
            [locationManager startUpdatingHeading];
        }
        else
        {
            NSLog(@"Heading information not available");
        }
    
    }
    
    return self;
}


- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    NSLog(@"%@", [locations lastObject]);
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location: %@", error);
}

- (void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading
{
    NSLog(@"Magnetic Heading: %f", [newHeading magneticHeading]);
    NSLog(@"True Heading: %f", [newHeading trueHeading]);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [locationManager setDelegate:nil];
}

@end
