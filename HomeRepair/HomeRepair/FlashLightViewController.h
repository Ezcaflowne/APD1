//
//  FlashLightViewController.h
//  HomeRepair
//
//  Created by Willson Ayotte on 9/11/13.
//  Copyright (c) 2013 Willson Ayotte. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface FlashLightViewController : ViewController
{
    UIButton *onButton;
    UIButton *offButtton;
    UIImageView *onView;
    UIImageView *offView;
    
}
@property (strong, nonatomic) IBOutlet UIButton *onButton;
@property (strong, nonatomic) IBOutlet UIButton *offButton;
@property (strong, nonatomic) IBOutlet UIImageView *onView;
@property (strong, nonatomic) IBOutlet UIImageView *offView;

-(IBAction)torchOn:(id)sender;
-(IBAction)torchOff:(id)sender;

@end
