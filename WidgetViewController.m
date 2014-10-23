//
//  WidgetViewController.m
//  Mirror Portal
//
//  Created by Jaimoto Flautero on 10/22/14.
//  Copyright (c) 2014 bquest. All rights reserved.
//

#import "WidgetViewController.h"

@interface WidgetViewController ()

@end

@implementation WidgetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //init scroll
    [self.scroller setScrollEnabled:YES];
    [self.scroller setContentSize:CGSizeMake(580,128)];
    
    [self.selImage setHidden:TRUE];
    [self.selLabel setHidden:TRUE];
    [self.lblUrl setHidden:TRUE];
    [self.txtUrl setHidden:TRUE];
    [self.btnWidget setHidden:TRUE];
    [self.widgTitle setHidden:TRUE];
    
    
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
- (IBAction)setWidget:(id)sender {
    
    [[[UIAlertView alloc] initWithTitle:@"Message"
                                message:@"Widget Assigned"
                               delegate:nil
                      cancelButtonTitle:@"Ok!"
                      otherButtonTitles: nil] show];
}

- (IBAction)selFb:(id)sender {
    NSLog(@"Sel FB");
    
    self.selImage.image = [UIImage imageNamed:@"social-icons-02"];
    self.selLabel.text = @"Facebook Newsfeed";
    
    [self.selImage setHidden:FALSE];
    [self.selLabel setHidden:FALSE];
    [self.lblUrl setHidden:FALSE];
    [self.txtUrl setHidden:FALSE];
    [self.btnWidget setHidden:FALSE];
    [self.widgTitle setHidden:FALSE];
}
- (IBAction)selTwitter:(id)sender {
    NSLog(@"Sel Twitter");
    
    self.selImage.image = [UIImage imageNamed:@"social-icons-01"];
    self.selLabel.text = @"Twitter Timeline";
    
    [self.selImage setHidden:FALSE];
    [self.selLabel setHidden:FALSE];
    [self.lblUrl setHidden:FALSE];
    [self.txtUrl setHidden:FALSE];
    [self.btnWidget setHidden:FALSE];
    [self.widgTitle setHidden:FALSE];

    
}

- (IBAction)selRss:(id)sender {
    
    self.selImage.image = [UIImage imageNamed:@"social-icons-07"];
    self.selLabel.text = @"RSS News Feed";
    
    [self.selImage setHidden:FALSE];
    [self.selLabel setHidden:FALSE];
    [self.lblUrl setHidden:FALSE];
    [self.txtUrl setHidden:FALSE];
    [self.btnWidget setHidden:FALSE];
    [self.widgTitle setHidden:FALSE];
    
    NSLog(@"Sel RSS");
}
- (IBAction)selPin:(id)sender {
    
    self.selImage.image = [UIImage imageNamed:@"social-icons-04"];
    self.selLabel.text = @"Pinterest Pins";
    
    [self.selImage setHidden:FALSE];
    [self.selLabel setHidden:FALSE];
    [self.lblUrl setHidden:FALSE];
    [self.txtUrl setHidden:FALSE];
    [self.btnWidget setHidden:FALSE];
    [self.widgTitle setHidden:FALSE];

    
    NSLog(@"Sel Pint");
}

@end
