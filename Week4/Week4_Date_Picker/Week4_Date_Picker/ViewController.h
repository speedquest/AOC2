//
//  ViewController.h
//  Week3_Date_Picker
//
//  Created by Nicholas Weil on 8/14/12.
//  Copyright (c) 2012 Nicholas Weil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"  //  Import the header file from SecondViewController


@interface ViewController : UIViewController <saveEventText>

{
    //  This will display the list of events
    IBOutlet UITextView *toDoList;
    
}

//  Listening for the 'ADD EVENT' button to be clicked
-(IBAction)onClick:(id)sender;

@end
