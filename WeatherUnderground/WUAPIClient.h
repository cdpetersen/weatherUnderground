//
//  WUAPIClient.h
//  WeatherUnderground
//
//  Created by Chris Petersen on 4/18/14.
//  Copyright (c) 2014 Chris Petersen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WUAPIClient : NSObject

- (void)weatherForState:(NSString *)state
                   city:(NSString *)city
             completion:(void (^)(NSDictionary *))completion;
@end

