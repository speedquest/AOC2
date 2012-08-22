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
    UIAlertView *alert;            //  The 'ALERT' when the text is missing
    
    id <saveEventText> delegate;
    NSString *textOfDate;                   //  Variable to hold the date in a string form
    NSString *newToDo;                      //  Variable for presenting the date on the First Event page
    
    //  The Label for the Swipe
    IBOutlet UILabel *secondSwipeLabel;
    
    //  Establishing the swipe recognizers
    UISwipeGestureRecognizer *secondRightSwiper;  //  Right Swipe
    UISwipeGestureRecognizer *secondLeftSwiper;   //  Left Swipe
    UIAlertView *secondSwipeAlert;            //  The 'ALERT' when the wrong swipe is used

}

@property(nonatomic,strong) NSDate *minimumDate;  //  The minimum DATE for the Date Picker
@property (strong) id<saveEventText> delegate;
@property (nonatomic, strong)IBOutlet UIDatePicker *datePicker;


-(IBAction)keyboardClose:(id)sender;        //  The Close Keyboard button

@end
