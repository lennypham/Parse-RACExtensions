//
//  PFQuery+RACExtensions.h
//  TheFamilyApp
//
//  Created by Matthew Hupman on 6/20/13.
//  Copyright (c) 2013 Citrrus. All rights reserved.
//

#import <Parse/Parse.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface PFQuery (RACExtensions)

- (RACSignal*)rac_findObjectsInBackground;

@end
