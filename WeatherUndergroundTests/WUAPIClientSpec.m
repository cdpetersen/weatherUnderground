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
#import "WUAPIClient.h"

SpecBegin(WUAPIClientSpec)

describe(@"WUAPIClient", ^{
    __block WUAPIClient *client;
    
    beforeEach(^{
        client = [[WUAPIClient alloc] init];
    });
    
    it(@"should be instantiateable", ^{
        expect(client).toNot.beNil();
    });
    
    it(@"should have a method that gets weather for a given state and city", ^{
        expect(client).to.respondTo(@selector(weatherForState:city:completion:));
    });
    
    context(@"weatherForState:city:completion:", ^{
        it(@"returns a dictionary", ^{
            __block NSDictionary *data;
            [client weatherForState:@"MI"
                               city:@"Detroit"
                         completion:^(NSDictionary *weatherData) {
                             data = weatherData;
                         }];
            expect(data).toNot.beNil();
        });
        it(@"returns correct weather data", ^{
            __block NSDictionary *data;
            [client weatherForState:@"MI"
                               city:@"Detroit"
                         completion:^(NSDictionary *weatherData) {
                             data = weatherData;
                         }];
            expect(data[@"current_observation"]).toNot.beNil();
//            expect(data[@"current_observation"]).to.beKindOf([NSDictionary class]);
        });
    });
    
});

SpecEnd