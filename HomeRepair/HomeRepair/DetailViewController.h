//
//  DetailViewController.h
//  HomeRepair
//
//  Created by Willson Ayotte on 9/10/13.
//  Copyright (c) 2013 Willson Ayotte. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DetailViewController : UIViewController
{
    IBOutlet UIScrollView *scrollView;
    
}

@property int selectedRow;
@property (nonatomic, strong) IBOutlet UILabel *itemLabel;//Name of that view
@property (nonatomic, strong) NSString *itemName;


@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) UIImage *picture;


@property (strong, nonatomic) IBOutlet UITextView *textLabel; //Description View
@property (nonatomic, strong) NSString *textView;
@property (nonatomic, strong) IBOutlet UITextView *concludeLabel;
@property (nonatomic, strong) NSString *concludeText;

@end
