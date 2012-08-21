//
//  ViewController.h
//  Week4_Date_Picker
//
//  Created by Nicholas Weil on 8/21/12.
//  Copyright (c) 2012 Nicholas Weil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"  //  Import the header file from SecondViewController


@interface ViewController : UIViewController <saveEventText>

{
    //  This will display the list of events
    IBOutlet UITextView *toDoList;
    //  The Label for the Swipe
    IBOutlet UILabel *swipeLabel;
    
    UISwipeGestureRecognizer *rightSwiper;
    UISwipeGestureRecognizer *leftSwiper;
    IBOutlet UIAlertView *swipeAlert;            //  The 'ALERT' when the wrong swipe is used

}

/*  REMOVED FOR WEEK 4
//  Listening for the 'ADD EVENT' button to be clicked
-(IBAction)onClick:(id)sender;
*/

@end
