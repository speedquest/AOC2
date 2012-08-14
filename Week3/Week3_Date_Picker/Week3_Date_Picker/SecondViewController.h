//
//  SecondViewController.h
//  Week3_Date_Picker
//
//  Created by Nicholas Weil on 8/14/12.
//  Copyright (c) 2012 Nicholas Weil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
{
    //  Establishing the buttons
    IBOutlet UIButton *saveToDo;        //  The 'SAVE' Button
    IBOutlet UIButton *closeKeyboard;   //  The 'CLOSE KEYBOARD' button
    IBOutlet UIDatePicker *datePicker;  //  The 'DATE PICKER' interface/button
    IBOutlet UITextField *toDoName;     //  The 'TEXT FIELD'
    IBOutlet UIAlertView *alert;        //  The 'ALERT' when the text is missing
    
}

@property(nonatomic,retain) NSDate *minimumDate;  //  The minimum DATE for the Date Picker

-(IBAction)saveButton:(id)sender;

-(IBAction)keyboardClose:(id)sender;

-(IBAction)saveDate:(id)sender;

@end
