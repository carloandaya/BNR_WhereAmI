//
//  BNRMapPoint.m
//  Whereami
//
//  Created by Carlo Andaya on 10/7/12.
//  Copyright (c) 2012 Carlo Andaya. All rights reserved.
//

#import "BNRMapPoint.h"

@implementation BNRMapPoint

@synthesize coordinate, title, subtitle;

// This is the designated initializer
- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle]; // do not display the time
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    
    NSDate *date = [NSDate date];
    
    
    self = [super init];
    if (self) {
        coordinate = c;
        subtitle = [dateFormatter stringFromDate:date];
        [self setTitle:t];
    }
    return self;
}

- (id)init
{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32) title:@"Hometown"];
}

@end
