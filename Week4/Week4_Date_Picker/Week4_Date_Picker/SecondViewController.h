//
//  SecondViewController.h
//  Week4_Date_Picker
//
//  Created by Nicholas Weil on 8/21/12.
//  Copyright (c) 2012 Nicholas Weil. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol saveEventText <NSObject>

@required


-(void)setToDo:(NSString*)toDoString;       //  The setter for the To Do string to be published

@end

@interface SecondViewController : UIViewController
{
    //  Establishing the buttons

    IBOutlet UIDatePicker *datePicker;      //  The 'DATE PICKER' interface/button
    IBOutlet UITextField *toDoTextField;    //  The 'TEXT FIELD'
    IBOutlet UIAlertView *alert;            //  The 'ALERT' when the text is missing
    id <saveEventText> delegate;
    NSString *textOfDate;                   //  Variable to hold the date in a string form
    NSString *newToDo;                      //  Variable for presenting the date on the First Event page
    
}

@property(nonatomic,retain) NSDate *minimumDate;  //  The minimum DATE for the Date Picker
@property (strong) id<saveEventText> delegate;
@property (nonatomic, retain)IBOutlet UIDatePicker *datePicker;

-(IBAction)saveButton:(id)sender;           //  The SAVE Button 
-(IBAction)keyboardClose:(id)sender;        //  The Close Keyboard button

@end
