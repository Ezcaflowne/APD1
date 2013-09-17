//
//  CalculatorViewController.h
//  HomeRepair
//
//  Created by Willson Ayotte on 9/11/13.
//  Copyright (c) 2013 Willson Ayotte. All rights reserved.
//

#import "ViewController.h"

@interface CalculatorViewController : ViewController {

float result;
IBOutlet UITextField *calculatorScreen;
int currentOperation;
float currentNumber;
}


-(IBAction)buttonDigitPressed:(id)sender;
-(IBAction)buttonOperationPressed:(id)sender;
-(IBAction)cancelOperation;

@end
