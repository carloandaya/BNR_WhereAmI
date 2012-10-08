//
//  WhereamiViewController.h
//  Whereami
//
//  Created by Carlo Andaya on 10/4/12.
//  Copyright (c) 2012 Carlo Andaya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface WhereamiViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate>
{
    // CLLocationManager is the class that interfaces with the location
    // hardware of the device.
    CLLocationManager *locationManager;
    
    IBOutlet MKMapView *worldView;
    IBOutlet UIActivityIndicatorView *activityIndicator;
    IBOutlet UITextField *locationTitleField;
    IBOutlet UISegmentedControl *mapTypeSelector;
}

// findLocation will tell the locationManager to start looking for the current location.
// It will also update the user interface so that the user can't re-enter text into the
// text field and will start the activity indicator spinning.
- (void)findLocation;

// foundLocation will create an instance of BNRMapPoint and add it to the worldView.
// It will also handle the map's zoom and reset the states of the UI elements
// and the locationManager.
- (void)foundLocation:(CLLocation *)loc;

- (void)didSelectMapType;

@end