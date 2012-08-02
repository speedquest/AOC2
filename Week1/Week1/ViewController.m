//
//  ViewController.m
//  Week1
//
//  Created by Nicholas Weil on 7/31/12.
//  Copyright (c) 2012 SpeedQuest. All rights reserved.
//

#import "ViewController.h"
#import "TextClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    textClass = [[TextClass alloc] init];
    if (textClass != nil)
    {
        //  Call a method that TextClass defines
    }
    textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
    textLabel.text = [textClass getText];
    [self.view addSubview:textLabel];
    
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
