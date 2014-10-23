//
//  AddressAnnotation.m
//  Mirror Portal
//
//  Created by Jaimoto Flautero on 10/23/14.
//  Copyright (c) 2014 bquest. All rights reserved.
//

#import "AddressAnnotation.h"

@implementation AddressAnnotation
@synthesize coordinate;

- (NSString *)subtitle{
    return nil;
}

- (NSString *)title{
    return nil;
}

-(id)initWithCoordinate:(CLLocationCoordinate2D) c{
    coordinate=c;
    return self;
}

@end