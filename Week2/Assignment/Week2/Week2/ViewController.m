//
//  ViewController.m
//  Week2
//
//  Created by Nicholas Weil on 8/8/12.
//  Copyright (c) 2012 Nicholas Weil. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"


@interface ViewController ()
@property (readonly) MainBrain *brain;
@end

@implementation ViewController

//  Implementing the Power/Start Button

- (IBAction)switchOn:(id)sender
{
    UISwitch *powerSwitch = (UISwitch*)sender;
    if (powerSwitch.on == false)
    {
        display.text = @"";
        NSLog(@"Power is Off");
    }
}


//  Implementing the Background changer
- (IBAction)backgroundToggle:(id)sender
{
    /*if (bgSwitch.selectedSegmentIndex == 0)
    {
        self.view.backgroundColor = [UIColor redColor];
    }
    else if (bgSwitch.selectedSegmentIndex == 1)
    {
        self.view.backgroundColor = [UIColor greenColor];
    }
    else if (bgSwitch.selectedSegmentIndex == 2)
    {
        self.view.backgroundColor = [UIColor blueColor];
    }*/
    
    
    if (bgSwitch.selectedSegmentIndex == 0)
    {
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"woodgrain.jpg"]];
    }
    else if (bgSwitch.selectedSegmentIndex == 1)
    {
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg_cherry_320.png"]]; 
    }
    else if(bgSwitch.selectedSegmentIndex ==2)
    {
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bamboo.png"]];
    }
}

//  Bringing up the INFO page
-(IBAction)infoPage:(id)sender
{
    SecondViewController *viewController = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
    if (viewController != nil)
    {
        [self presentModalViewController:viewController animated:true];
    }
        
    NSLog(@"info is linked");  // Test to be sure Info button was working
}

-(MainBrain *)brain
{
    if(!brain) brain = [[MainBrain alloc] init];
    return brain;
}

//  When a DIGIT is pressed perform this to convert all numbers to floats
- (IBAction)numberPressed:(UIButton *)sender

{
    if (powerSwitch.on == true)
    {
        
        NSString *digit = sender.titleLabel.text;
        NSString *floatingPoint = [NSString stringWithFormat:@"%f", calculatorText];
        
        if([floatingPoint rangeOfString:@"."].location != NSNotFound)
        {
        }
        else{
            display.text = [display.text stringByAppendingString:@"."];
        }
        if(userIsInTheMiddleOfTypingANumber)  // This prevents the program from only taking in one digit at a time

        {
            display.text = [display.text stringByAppendingString:digit];
        }
        else {
            display.text = digit;
            userIsInTheMiddleOfTypingANumber = YES;
        }
    }
    else {
        display.text = @"The power is off";  // Alerting the USER to turn power on
        NSLog(@"Power is off");
        
    }
}

//  When an Operation is pressed, do this:
- (IBAction)operationPressed:(UIButton *)sender
{
    if (powerSwitch.on == true)
    {
        if(userIsInTheMiddleOfTypingANumber)  // This prevents the program from only taking in one digit at a time
        {
            self.brain.operand = [display.text doubleValue];
            userIsInTheMiddleOfTypingANumber = NO;
        } 
    NSString *operation = [sender.titleLabel text];
    [self.brain performOperation:operation];
    display.text = [NSString stringWithFormat:@"%g", self.brain.operand];
}
    else{
        display.text = @"The power is off";  // Alerting the USER to turn power on
        NSLog(@"Power is off");
        
    }
}

- (void)viewDidLoad
{
    //  Loading Default background
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"woodgrain.jpg"]];
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
