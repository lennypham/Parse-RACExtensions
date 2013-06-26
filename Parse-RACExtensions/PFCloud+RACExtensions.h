//
//  PFCloud+RACExtensions.h
//  TheFamilyApp
//
//  Created by Matthew Hupman on 6/25/13.
//  Copyright (c) 2013 Citrrus. All rights reserved.
//

#import <Parse/Parse.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface PFCloud (RACExtensions)

+ (RACSignal*)callFunctionInBackground:(NSString*)functionName
                        withParameters:(NSDictionary*)params;

@end
