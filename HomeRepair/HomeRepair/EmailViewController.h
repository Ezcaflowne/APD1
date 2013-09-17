//
//  EmailViewController.h
//  HomeRepair
//
//  Created by Willson Ayotte on 9/11/13.
//  Copyright (c) 2013 Willson Ayotte. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface EmailViewController : UIViewController
{
    IBOutlet UIScrollView *scrollView;
    
}

- (IBAction)showEmail:(id)sender;

@end
