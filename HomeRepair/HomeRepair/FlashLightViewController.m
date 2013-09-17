//
//  FlashLightViewController.m
//  HomeRepair
//
//  Created by Willson Ayotte on 9/11/13.
//  Copyright (c) 2013 Willson Ayotte. All rights reserved.
//

#import "FlashLightViewController.h"

@interface FlashLightViewController ()

@end

@implementation FlashLightViewController

@synthesize offButton, onView, onButton, offView;

-(IBAction)torchOn:(id)sender
{
    
    onButton.hidden = YES;
    offButton.hidden = NO;
    
    onView.hidden = NO;
    offView.hidden = YES;
    
    AVCaptureDevice *flashLight = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if([flashLight isTorchAvailable] && [flashLight isTorchModeSupported:AVCaptureTorchModeOn])
    {
        BOOL success = [flashLight lockForConfiguration:nil];
        if (success)
        {
            [flashLight setTorchMode:AVCaptureTorchModeOn];
            [flashLight unlockForConfiguration];
        }
    }
}

-(IBAction)torchOff:(id)sender{
    
    onButton.hidden = NO;
    offButton.hidden = YES;
    
    onView.hidden = YES;
    offView.hidden = NO;
    
    AVCaptureDevice *flashLight = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if ([flashLight isTorchAvailable] && [flashLight isTorchModeSupported:AVCaptureTorchModeOn])
        
    {
        BOOL success = [flashLight lockForConfiguration:nil];
        if (success)
        {
            [flashLight setTorchMode:AVCaptureTorchModeOff];
            [flashLight unlockForConfiguration];
        }
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
