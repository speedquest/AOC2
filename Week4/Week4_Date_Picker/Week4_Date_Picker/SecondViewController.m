//
//  SecondViewController.m
//  Week4_Date_Picker
//
//  Created by Nicholas Weil on 8/21/12.
//  Copyright (c) 2012 Nicholas Weil. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize delegate, datePicker;  //  Synthesizes the variables to avoid conflicts

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //  Set the current date on the picker for validation
    //  minimumDate = [ NSDate dateToday];
    datePicker.minimumDate = [NSDate date];
    
    //  Determines if the keyboard is VISIBLE per Wendys video
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardShow:) name:UIKeyboardWillShowNotification object:nil];
    
    
    //  Determines if the keyboard is HIDDEN per Wendys video
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardHide:) name:UIKeyboardWillHideNotification object:nil];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

//  Making the keyboard is visible
- (void)keyboardShow: (NSNotification *) notification
{
    
}

// Hiding the keyboard
- (void)keyboardHide: (NSNotification *) notification
{
    
}
    //  This will operate the 'SAVE' function when the button is clicked
-(IBAction)saveButton:(id)sender
{
    if ([toDoTextField.text length] > 0)        //  Check to make sure text field contains anything
    {
        NSDate *choice = [datePicker date];     //  Sets the choice variable to the date selected with the picker
        if (choice != nil)                      //  If the choice exists then do this
        {
            NSDateFormatter *makeDate = [[NSDateFormatter alloc] init]; //  Assign makeDate and then  format it accordingly
                if (makeDate != nil)
                {
                    [makeDate setDateFormat:@"MMMM dd, h:mm a"];
                }
                textOfDate = [makeDate stringFromDate:choice];
        }
        //  Animate to the Main Screen
        [self dismissModalViewControllerAnimated:true];
        if (delegate != nil)
        {
             newToDo= [NSString stringWithFormat:@"%@ \n%@ \n \n", toDoTextField.text, textOfDate];
            [delegate setToDo:newToDo];
        }
    }
    else        //  ALERT if no text is in Event Field
    {
        alert = [[UIAlertView alloc] initWithTitle:@"ALERT" message:@"Event Field must contain a description" delegate:self cancelButtonTitle:@"Continue" otherButtonTitles:nil, nil];
        [alert show];
    }
}

    //  This will close the keyboard when the button is presed
-(IBAction)keyboardClose:(id)sender
{
    [toDoTextField resignFirstResponder];  //  Releases the keyboard from the view
}



- (BOOL)textFieldShouldBeginEditing:(UITextField *)theToDoTextField
{
    theToDoTextField.text = @"";
    return YES;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
