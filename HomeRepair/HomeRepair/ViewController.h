//
//  FirstViewController.h
//  HomeRepair
//
//  Created by Willson Ayotte on 9/10/13.
//  Copyright (c) 2013 Willson Ayotte. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITableView *myTableView;


@end
