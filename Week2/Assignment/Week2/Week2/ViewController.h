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
    IBOutlet UISwitch *powerSwitch;
    IBOutlet UISegmentedControl *bgSwitch;
    
}

- (IBAction)numberPressed:(UIButton *)sender;  //  Numbers
- (IBAction)operationPressed:(UIButton *)sender;  // Operators
- (IBAction)switchOn:(id)sender;  // Power Switch
- (IBAction)backgroundToggle:(id)sender;  // Background toggle
- (IBAction)infoPage:(id)sender;  //  Information Page

@end
