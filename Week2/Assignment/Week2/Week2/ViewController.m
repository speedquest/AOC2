//
//  ViewController.m
//  Week2
//
//  Created by Nicholas Weil on 8/8/12.
//  Copyright (c) 2012 Nicholas Weil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (readonly) MainBrain *brain;
@end

@implementation ViewController

//  Implementing the Power/Start Button


-(MainBrain *)brain
{
    if(!brain) brain = [[MainBrain alloc] init];
    return brain;
}

//  When a DIGIT is pressed perform this to convert all numbers to floats
- (IBAction)numberPressed:(UIButton *)sender
{
    NSString *digit = sender.titleLabel.text;
    NSString *floatingPoint = [NSString stringWithFormat:@"%f", calculatorText];
    
    if([floatingPoint rangeOfString:@"."].location != NSNotFound)
    {
    }
    else{
        display.text = [display.text stringByAppendingString:@"."];
    }
    if(userIsInTheMiddleOfTypingANumber)
    {
        display.text = [display.text stringByAppendingString:digit];
    }
    else {
        display.text = digit;
        userIsInTheMiddleOfTypingANumber = YES;
    }
}


//  When an Operation is pressed, do this:
- (IBAction)operationPressed:(UIButton *)sender
{
     if(userIsInTheMiddleOfTypingANumber)
    {
        self.brain.operand = [display.text doubleValue];
        userIsInTheMiddleOfTypingANumber = NO;
    } 
    NSString *operation = [sender.titleLabel text];
    [self.brain performOperation:operation];
    display.text = [NSString stringWithFormat:@"%g", self.brain.operand];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
