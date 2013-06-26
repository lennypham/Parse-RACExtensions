//
//  PFQuery+RACExtensions.m
//  TheFamilyApp
//
//  Created by Matthew Hupman on 6/20/13.
//  Copyright (c) 2013 Citrrus. All rights reserved.
//

#import "PFQuery+RACExtensions.h"

@implementation PFQuery (RACExtensions)

- (RACSignal*)rac_findObjectsInBackground
{
    RACMulticastConnection* connection = [[RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
       [self findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
           if (!error)
           {
               [subscriber sendNext:objects];
               [subscriber sendCompleted];
           }
           else
           {
               [subscriber sendError:error];
           }
       }];
        
        return [RACScopedDisposable disposableWithBlock:^{
            [self cancel];
        }];
    }] publish];
    
    [connection connect];
    
    return connection.signal;
}

@end