//
//  AddressAnnotation.h
//  Mirror Portal
//
//  Created by Jaimoto Flautero on 10/23/14.
//  Copyright (c) 2014 bquest. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>


@interface AddressAnnotation : NSObject<MKAnnotation> {
    CLLocationCoordinate2D coordinate;
}

-(id)initWithCoordinate:(CLLocationCoordinate2D) c;

@end