//
//  CalculatorViewController.m
//  HomeRepair
//
//  Created by Willson Ayotte on 9/11/13.
//  Copyright (c) 2013 Willson Ayotte. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@end

@implementation CalculatorViewController

-(IBAction)buttonDigitPressed:(id)sender {
    currentNumber = currentNumber*10 + (float)[sender tag];
    calculatorScreen.text = [NSString stringWithFormat:@"%.1f",currentNumber];
}
-(IBAction)buttonOperationPressed:(id)sender {
    if (currentOperation == 0) result = currentNumber;
    else {
        switch (currentOperation) {
            case 1:
                result = result + currentNumber;
                break;
            case 2:
                result = result - currentNumber;
                break;
            case 3:
                result = result * currentNumber;
                break;
            case 4:
                result = result / currentNumber;
                break;
            case 5:
                currentOperation = 0;
                break;
        }
    }
    currentNumber = 0;
    calculatorScreen.text = [NSString stringWithFormat:@"%.1f",result];
    if ([sender tag] == 0) result = 0;
    currentOperation = [sender tag];
}

-(IBAction)cancelOperation {
    currentNumber = 0;
    calculatorScreen.text = @"0";
    currentOperation = 0;
}
@end