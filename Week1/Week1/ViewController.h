//
//  ViewController.h
//  Week1
//
//  Created by Nicholas Weil on 7/31/12.
//  Copyright (c) 2012 SpeedQuest. All rights reserved.
//

#import <UIKit/UIKit.h>
@class  NumberClass;

@interface ViewController : UIViewController
{
    UILabel *textLabel;
    
    NumberClass *numberClass;
}

-(NSString*)getText;

@end
