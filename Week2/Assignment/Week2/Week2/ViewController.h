//
//  ViewController.h
//  Week2
//
//  Created by Nicholas Weil on 8/8/12.
//  Copyright (c) 2012 Nicholas Weil. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MainBrain.h"

@interface ViewController : UIViewController
{
    float calculatorText;
    IBOutlet UILabel *display;
    MainBrain *brain;
    BOOL userIsInTheMiddleOfTypingANumber;
}

- (IBAction)numberPressed:(UIButton *)sender;
- (IBAction)operationPressed:(UIButton *)sender;


@end
