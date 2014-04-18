//
//  WUAPIClientSpec.m
//  WeatherUnderground
//
//  Created by Chris Petersen on 4/18/14.
//  Copyright (c) 2014 Chris Petersen. All rights reserved.
//

#define EXP_SHORTHAND
#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import "WULocationManager.h"

SpecBegin(WULocationManagerSpec)

describe(@"WULocationManager", ^{
    
    __block WULocationManager *manager;
    
    beforeEach(^{
        manager = [[WULocationManager alloc] init];
    });
    
    it(@"allows an instance", ^{
        expect(manager).toNot.beNil();
    });
    
    it(@"responds to selector current location", ^{
        expect(manager).to.respondTo(@selector(currentLocation));
    });
    
    it(@"has a CLLocationManager property", ^{
        expect(manager.locationManager).to.beKindOf([CLLocationManager class]   );
    });
    
    context(@"current location", ^{
        it(@"returns a location", ^{
            CLLocation *location = [manager currentLocation];
            expect(location).to.beKindOf([CLLocation class]);
        });
        
    });
});


SpecEnd