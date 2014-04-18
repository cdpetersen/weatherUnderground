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
    it(@"should be instantiateable", ^{
        WUAPIClient *client = [[WUAPIClient alloc] init];
        expect(client).toNot.beNil();
    });
    
});

SpecEnd