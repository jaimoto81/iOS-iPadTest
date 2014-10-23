//
//  PortalAdminViewController.m
//  Mirror Portal
//
//  Created by Jaimoto Flautero on 10/22/14.
//  Copyright (c) 2014 bquest. All rights reserved.
//

#import "PortalAdminViewController.h"
#import <MapKit/MapKit.h>
#import "MapViewAnnotation.h"

@interface PortalAdminViewController ()

@end

@implementation PortalAdminViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [super viewDidLoad];
    mapa = [[MKMapView alloc]
               initWithFrame:CGRectMake(0,
                                        0,
                                        self.view.bounds.size.width,
                                        self.view.bounds.size.height)
               ];
    mapa.showsUserLocation = YES;
    mapa.mapType = MKMapTypeHybrid;
    mapa.delegate = self;
    //[self.view addSubview:mapa];
    
    CLLocationCoordinate2D  ctrpoint;
    //ctrpoint.latitude = -74.04887;
    //ctrpoint.longitude = 4.69809;
    ctrpoint.latitude = 51.49521;
    ctrpoint.longitude = -0.1351718;
    MapViewAnnotation *annotation = [[MapViewAnnotation alloc] initWithTitle:@"Picadilly Circus" AndCoordinate:ctrpoint];
    
    [self.mapa addAnnotation:annotation];
    
    ctrpoint.latitude = 51.5548535;
    ctrpoint.longitude = -0.2987048;
    MapViewAnnotation *annotation2 = [[MapViewAnnotation alloc] initWithTitle:@"Wembley Arena" AndCoordinate:ctrpoint];
    [self.mapa addAnnotation:annotation2];
   
    ctrpoint.latitude = 41.380896;
    ctrpoint.longitude = 2.12282;
    MapViewAnnotation *annotation3 = [[MapViewAnnotation alloc] initWithTitle:@"Camp Nou" AndCoordinate:ctrpoint];
    [self.mapa addAnnotation:annotation3];
    
    ctrpoint.latitude = 4.6675137;
    ctrpoint.longitude = -74.0539912;
    MapViewAnnotation *annotation4 = [[MapViewAnnotation alloc] initWithTitle:@"Zona T" AndCoordinate:ctrpoint];
    [self.mapa addAnnotation:annotation4];
    
    ctrpoint.latitude = 4.6700737;
    ctrpoint.longitude = -74.0610901;
    MapViewAnnotation *annotation5 = [[MapViewAnnotation alloc] initWithTitle:@"Unicentro" AndCoordinate:ctrpoint];
    [self.mapa addAnnotation:annotation5];

    ctrpoint.latitude = 4.64792;
    ctrpoint.longitude = -74.101945;
    MapViewAnnotation *annotation6 = [[MapViewAnnotation alloc] initWithTitle:@"Gran Estación" AndCoordinate:ctrpoint];
    [self.mapa addAnnotation:annotation6];
    
    ctrpoint.latitude = 4.676825;
    ctrpoint.longitude = -74.048188;
    MapViewAnnotation *annotation7 = [[MapViewAnnotation alloc] initWithTitle:@"Parque de la 93" AndCoordinate:ctrpoint];
    [self.mapa addAnnotation:annotation7];
    
    //load uipicker
    //*myPickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 200, 320, 200)];
    self.selectPortal.delegate = self;
    self.selectPortal.showsSelectionIndicator = YES;
    //[self.view addSubview:myPickerView];


    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)mapView:(MKMapView *)aMapView didUpdateUserLocation:(MKUserLocation *)aUserLocation {
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    CLLocationCoordinate2D location;
    location.latitude = aUserLocation.coordinate.latitude;
    location.longitude = aUserLocation.coordinate.longitude;
    region.span = span;
    region.center = location;
    [aMapView setRegion:region animated:YES];
    

    
    
}

-(void)zoomInOnLocation:(CLLocationCoordinate2D)location
{
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, 200, 200);
    [self.mapa setRegion:[self.mapa regionThatFits:region] animated:YES];
}


#pragma mark PickerView

- (void)pickerView:(UIPickerView *)pickerView didSelectRow: (NSInteger)row inComponent:(NSInteger)component {
    // Handle the selection
}

// tell the picker how many rows are available for a given component
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    NSUInteger numRows = 7;
    
    return numRows;
}

// tell the picker how many components it will have
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

// tell the picker the title for a given component
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    NSString *title;
    if(row == 0){
        title = @"Unicentro - Bogotá";
    }else if (row == 1){
        title = @"Gran Estación - Bogotá";
    }else if (row == 2){
        title = @"Parque de la 93 - Bogotá";
    }else if (row == 3){
        title = @"Zona T - Bogotá";
    }else if (row == 4){
        title = @"Camp Nou - Barcelona";
    }else if (row == 5){
        title = @"Wmebley Arena - London";
    }else if (row == 6){
        title = @"Picadilly Circus - London";
    }
    return title;
}

// tell the picker the width of each row for a given component
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {
    int sectionWidth = 300;
    
    return sectionWidth;
}



@end
