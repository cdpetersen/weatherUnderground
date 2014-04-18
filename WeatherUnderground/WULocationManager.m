//
//  WULocationManager.m
//  WeatherUnderground
//
//  Created by Chris Petersen on 4/18/14.
//  Copyright (c) 2014 Chris Petersen. All rights reserved.
//

#import "WULocationManager.h"

@interface WULocationManager ()
@property (nonatomic, strong) CLLocationManager *locationManager;

@end

@implementation WULocationManager

- (CLLocationManager *)locationManager {
    if (!_locationManager) {
        _locationManager = [[CLLocationManager alloc] init];
    }
    return _locationManager;
}

- (CLLocation *)currentLocation {
    return [[CLLocation alloc] init];
}

- (void) getCurrentLocationWithCompletion:(void (^)(CLLocation *))completion {
    if (completion) {
        completion([self currentLocation]);
    }
}

@end
