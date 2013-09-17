//
//  LocationViewController.m
//  HomeRepair
//
//  Created by Willson Ayotte on 9/11/13.
//  Copyright (c) 2013 Willson Ayotte. All rights reserved.
//

#import "LocationViewController.h"

@interface LocationViewController ()

@end

@implementation LocationViewController

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
    
    MKMapView *currentMap = [[MKMapView alloc] initWithFrame:self.view.frame];
    
    //Always center the dot and zoom in to an apropriate zoom level when position changes
    [currentMap setUserTrackingMode:MKUserTrackingModeFollow];
    [currentMap setScrollEnabled:YES];
    
    [self.view addSubview:currentMap];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
