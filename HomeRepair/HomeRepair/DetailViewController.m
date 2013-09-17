//
//  DetailViewController.m
//  HomeRepair
//
//  Created by Willson Ayotte on 9/10/13.
//  Copyright (c) 2013 Willson Ayotte. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize itemLabel;
@synthesize itemName;
@synthesize textLabel;
@synthesize textView;
@synthesize concludeLabel;
@synthesize concludeText;
@synthesize imageView;
@synthesize selectedRow;
@synthesize picture;

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
    
    
    itemLabel.text = itemName;
    textLabel.text = textView;
    concludeLabel.text = concludeText;
    imageView.image = picture;
    
    
    //picture.image = myImageView;
    //**************SCROLL VIEW*************
    [scrollView setScrollEnabled:YES];
    [scrollView setContentSize:CGSizeMake(320,960)];
    scrollView.contentInset=UIEdgeInsetsMake(0.0,0.0,90.0,0.0);
    
//    NSDictionary *picturesDictionary = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle     mainBundle] pathForResource:@"repairlist" ofType:@"plist"]];
//    NSArray *imageArray = [picturesDictionary objectForKey:@"Thumbnail"];

    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end