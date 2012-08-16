//
//  ViewController.m
//  Week3_Date_Picker
//
//  Created by Nicholas Weil on 8/14/12.
//  Copyright (c) 2012 Nicholas Weil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//  When the 'ADD EVENT' button is clicked, animate to the second view
-(IBAction)onClick:(id)sender
{
    SecondViewController *viewController = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    if (viewController != nil)
    {
        viewController.delegate = self;
        [self presentModalViewController:viewController animated:true];
    }
}

-(void)setToDo:(NSString *)theToDoString
{
    toDoList.text = [toDoList.text stringByAppendingString:theToDoString];  //  Appending the string of the date
    NSLog(@"the event is %@", toDoList.text);       //  Set up to test the dates being loaded.
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
