//
//  PFCloud+RACExtensions.m
//  TheFamilyApp
//
//  Created by Matthew Hupman on 6/25/13.
//  Copyright (c) 2013 Citrrus. All rights reserved.
//

#import "PFCloud+RACExtensions.h"

@implementation PFCloud (RACExtensions)

+ (RACSignal*)callFunctionInBackground:(NSString*)functionName
                        withParameters:(NSDictionary*)params
{
    RACMulticastConnection* connection = [[RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        [self callFunctionInBackground:functionName withParameters:params block:^(id object, NSError *error) {
            if (!error)
            {
                [subscriber sendNext:object];
                [subscriber sendCompleted];
            }
            else
            {
                [subscriber sendError:error];
            }
        }];
        
        return nil;
        
    }] publish];
    
    [connection connect];
    
    return connection.signal;
}

@end
