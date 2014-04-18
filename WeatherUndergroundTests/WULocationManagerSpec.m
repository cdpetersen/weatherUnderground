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
    
    context(@"current location", ^{
        it(@"returns a location", ^{
            CLLocation *location = [manager currentLocation];
                expect(location).to.beKindOf([CLLocation class]);
        });

        xit(@"returns actual coordinates", ^{
            CLLocation *loc = [manager currentLocation];
            expect(loc.coordinate.latitude).toNot.equal(0);
            expect(loc.coordinate.longitude).toNot.equal(0);
        });
        
    });
    
    context(@"getCurrentLocationWithCompletion:", ^{
        it(@"fetches a location", ^{
            expect(manager).to.respondTo(@selector(getCurrentLocationWithCompletion:));
        });
        
        it(@"calls completion block", ^{
            __block CLLocation *location;
            void (^completion)(CLLocation *) = ^void(CLLocation *currentLocation){
                location = currentLocation;
            };
            [manager getCurrentLocationWithCompletion:completion];
            expect(location).toNot.beNil();
        });
        xit(@"returns a location", ^{
        
        });
    });
});


SpecEnd