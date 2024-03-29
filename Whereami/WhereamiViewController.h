//
//  WhereamiViewController.h
//  Whereami
//
//  Created by Carlo Andaya on 10/4/12.
//  Copyright (c) 2012 Carlo Andaya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface WhereamiViewController : UIViewController <CLLocationManagerDelegate>
{
    // CLLocationManager is the class that interfaces with the location
    // hardware of the device.
    CLLocationManager *locationManager;
}

@end