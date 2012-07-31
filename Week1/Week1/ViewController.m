//
//  ViewController.m
//  Week1
//
//  Created by Nicholas Weil on 7/31/12.
//  Copyright (c) 2012 SpeedQuest. All rights reserved.
//

#import "ViewController.h"
#import "NumberClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    numberClass = [[NumberClass alloc] init];
    if (numberClass != nil)
    {
        
    }
    textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
    textLabel.text = [self.getText];
    [self.view addSubview:textLabel];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(NSString*)getText
{
    return @"hello";
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
