//
//  WUAPIClient.m
//  WeatherUnderground
//
//  Created by Chris Petersen on 4/18/14.
//  Copyright (c) 2014 Chris Petersen. All rights reserved.
//

#import "WUAPIClient.h"
#import <AFNetworking.h>

@implementation WUAPIClient

- (void)weatherForState:(NSString *)state city:(NSString *)city completion:(void (^)(NSDictionary *))completion
{
    NSString *baseUrl = @"http://api.wunderground.com/api/";
    NSString *chrisKey = @"1545e0dccc646b1c";
//    NSString *aState = @"MI";
//    NSString *city = @"Detroit";
    
//    http://api.wunderground.com/api/1545e0dccc646b1c/conditions/q/MI/Detroit.json
    NSString *urlString = [NSString stringWithFormat:@"%@%@/conditions/q/%@%@.json", baseUrl, chrisKey, state, city];
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:urlString parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        completion(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    
    if (completion) {
        completion(@{});
    }
}

@end
