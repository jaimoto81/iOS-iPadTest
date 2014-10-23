//
//  PortalClientViewController.m
//  Mirror Portal
//
//  Created by Jaimoto Flautero on 10/23/14.
//  Copyright (c) 2014 bquest. All rights reserved.
//

#import "PortalClientViewController.h"

@interface PortalClientViewController ()

@end

@implementation PortalClientViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //load uipicker
    //*myPickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 200, 320, 200)];
    self.portalPicker .delegate = self;
    self.portalPicker.showsSelectionIndicator = YES;
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


- (void)pickerView:(UIPickerView *)pickerView didSelectRow: (NSInteger)row inComponent:(NSInteger)component {
    // Handle the selection
}

// tell the picker how many rows are available for a given component
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    NSUInteger numRows = 4;
    
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
    }
    return title;
}

// tell the picker the width of each row for a given component
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {
    int sectionWidth = 300;
    
    return sectionWidth;
}



@end
