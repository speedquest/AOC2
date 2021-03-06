//
//  ViewController.m
//  Week4_Date_Picker
//
//  Created by Nicholas Weil on 8/21/12.
//  Copyright (c) 2012 Nicholas Weil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

/*  REMOVED FOR WEEK 4
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
*/


//  Appending the list of Events by adding the most recent stuff (outputs to NSLog to check)
-(void)setToDo:(NSString *)theToDoString
{
    toDoList.text = [toDoList.text stringByAppendingString:theToDoString];  //  Appending the string of the date
    NSLog(@"the event is %@", toDoList.text);       //  Set up to test the dates being loaded.
}

- (void)viewDidLoad
{

    //  Establishing the rightSwiper
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe: )];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabel addGestureRecognizer:rightSwiper];
    
    //  Establishing the leftSwiper
    leftSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe: )];
    leftSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLabel addGestureRecognizer:leftSwiper];
    
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        NSString *theToDoString = [defaults objectForKey:@"theEvent"];
        toDoList.text = theToDoString;
    }

        [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


//  When the SAVE BUTTON is clicked update the list and save it to the file
-(IBAction)onSaveEvent:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        NSString *theToDoString = toDoList.text;
        [defaults setObject:theToDoString forKey:@"theEvent"];
        [defaults synchronize];
    }
}


//  This will determine whether the swipe was LEFT or Right
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        SecondViewController *viewController = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
        if (viewController != nil)
        {
            viewController.delegate = self;
            [self presentModalViewController:viewController animated:true];
        }

    }
    //  Broken swipe error message
     else if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        swipeAlert = [[UIAlertView alloc] initWithTitle:@"Sorry..." message:@"Please swipe to the Right" delegate:self cancelButtonTitle:@"Continue" otherButtonTitles:nil, nil];
        [swipeAlert show];
    }    
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
