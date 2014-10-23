//
//  WidgetViewController.h
//  Mirror Portal
//
//  Created by Jaimoto Flautero on 10/22/14.
//  Copyright (c) 2014 bquest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WidgetViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *selImage;
@property (weak, nonatomic) IBOutlet UILabel *selLabel;

@property (weak, nonatomic) IBOutlet UILabel *widgTitle;

@property (weak, nonatomic) IBOutlet UILabel *lblUrl;
@property (weak, nonatomic) IBOutlet UIButton *btnWidget;
@property (weak, nonatomic) IBOutlet UITextField *txtUrl;
@property (weak, nonatomic) IBOutlet UIScrollView *scroller;

@property (weak, nonatomic) IBOutlet UIButton *btnTwt;

@property (weak, nonatomic) IBOutlet UIButton *btnFb;
@property (weak, nonatomic) IBOutlet UIButton *btnPin;

@property (weak, nonatomic) IBOutlet UIButton *btnRss;


@end
