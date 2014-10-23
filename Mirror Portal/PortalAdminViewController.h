//
//  PortalAdminViewController.h
//  Mirror Portal
//
//  Created by Jaimoto Flautero on 10/22/14.
//  Copyright (c) 2014 bquest. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface PortalAdminViewController : UIViewController <MKMapViewDelegate,UIPickerViewDelegate>{
    MKMapView *mapa;
}
@property (weak, nonatomic) IBOutlet UIPickerView *selectPortal;
@property (weak, nonatomic) IBOutlet MKMapView *mapa;

@end
