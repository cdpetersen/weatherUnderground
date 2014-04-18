//
//  WULocationManager.m
//  WeatherUnderground
//
//  Created by Chris Petersen on 4/18/14.
//  Copyright (c) 2014 Chris Petersen. All rights reserved.
//

#import "WULocationManager.h"


@implementation WULocationManager

- (CLLocation *)currentLocation {
    return [[CLLocation alloc] init];
}

- (void) getCurrentLocationWithCompletion:(void (^)(CLLocation *))completion {
    if (completion) {
        completion([self currentLocation]);
    }
}

@end
