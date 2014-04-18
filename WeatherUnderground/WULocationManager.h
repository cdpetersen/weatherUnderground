//
//  WULocationManager.h
//  WeatherUnderground
//
//  Created by Chris Petersen on 4/18/14.
//  Copyright (c) 2014 Chris Petersen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface WULocationManager : NSObject

- (CLLocation *)currentLocation;

@end
