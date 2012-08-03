//
//  ViewController.m
//  Week1
//
//  Created by Nicholas Weil on 7/31/12.
//  Copyright (c) 2012 SpeedQuest. All rights reserved.
//

#import "ViewController.h"
#import "DragonFactory.h"
#import "BaseDragons.h"
#import "RedDragon.h"
#import "GoldDragon.h"
#import "BlackDragon.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor grayColor];    //  Background color
    
//  Dragon #1 SubClass Accessed (GETTER)
    partition1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, 320, 50)]; // Rectangle Frame
    partition1.backgroundColor = [UIColor whiteColor];
    partition1.numberOfLines = 2;
    partition1.textAlignment = UITextAlignmentCenter;
    partition1.font = [UIFont fontWithName:@"Arial" size:14];

    [self.view addSubview:partition1];
    
    RedDragon *redDragonText = (RedDragon*) [DragonFactory GetDragon:0];
    [redDragonText getDragonByName];
    [redDragonText getDragonHeadCount];
    [redDragonText getDragonHeadWeight];
    [redDragonText getDragonWeight];
    
    partition1.text = [NSString stringWithFormat:@"%@ has %d heads.Each head is %.1f#s. His heads total: %.1f#s. He weighs %.1fK#s total.",
            [redDragonText getDragonByName],
            [redDragonText getDragonHeadCount],
            [redDragonText getDragonHeadWeight],
            [redDragonText getTotalDragonHeadWeight],
            [redDragonText getDragonWeight]];
    
    
// Dragon #1 SubClass MUTATOR/SETTER
    partition2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 85, 320, 50)];
    partition2.backgroundColor = [UIColor colorWithRed:0.992 green:0.635 blue:0.027 alpha:1] /*#fda207*/;
    partition2.numberOfLines = 2;
    partition2.textAlignment = UITextAlignmentCenter;
    partition2.font = [UIFont fontWithName:@"Arial" size:14];
    [self.view addSubview:partition2];
  
    RedDragon *redDragonText2 = (RedDragon*) [DragonFactory GetDragon:dragonType_Red];
    [redDragonText2 getDragonByName];
    [redDragonText2 setHeadCount:3];
    [redDragonText2 setTotalDragonHeadWeight:200.0f];

    partition2.text = [NSString stringWithFormat:@"%@ was in a battle and lost heads.He now has %d heads left. His heads now total %.1f.",
        [redDragonText2 getDragonByName],
        [redDragonText2 getDragonHeadCount],
        [redDragonText2 getTotalDragonHeadWeight]];
    
//  Dragon #2 SubClass Accessed (GETTER)
    partition3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 155, 320, 50)];
    partition3.backgroundColor = [UIColor whiteColor];
    partition3.numberOfLines = 2;
    partition3.textAlignment = UITextAlignmentCenter;
    partition3.font = [UIFont fontWithName:@"Arial" size:14];
    [self.view addSubview:partition3];
    
    GoldDragon *goldDragonText = (GoldDragon*) [DragonFactory GetDragon:1];
    [goldDragonText getDragonByName];
    [goldDragonText getDragonHeadCount];
    [goldDragonText getDragonHeadWeight];
    [goldDragonText getDragonWeight];
    
    partition3.text = [NSString stringWithFormat:@"%@ has %d heads.Each head is %.1f#s. His heads total: %.1f#s. He weighs %.1fK#s total.",
       [goldDragonText getDragonByName],
       [goldDragonText getDragonHeadCount],
       [goldDragonText getDragonHeadWeight],
       [goldDragonText getTotalDragonHeadWeight],
       [goldDragonText getDragonWeight]];

// Dragon #2 SubClass MUTATOR/SETTER
    partition4 = [[UILabel alloc] initWithFrame:CGRectMake(0, 225, 320, 50)];
    partition4.backgroundColor = [UIColor greenColor];
    partition4.numberOfLines = 2;
    partition4.textAlignment = UITextAlignmentCenter;
    partition4.font = [UIFont fontWithName:@"Arial" size:14];
    [self.view addSubview:partition4];
    
    GoldDragon *goldDragonText2 = (GoldDragon*) [DragonFactory GetDragon:dragonType_Gold];
    [goldDragonText2 getDragonByName];
    [goldDragonText2 setHeadCount:1];
    [goldDragonText2 setTotalDragonHeadWeight:100.0f];
    
    partition4.text = [NSString stringWithFormat:@"%@ was in a battle and lost heads.He now has %d heads left. His heads now total %.1f.",
                       [goldDragonText2 getDragonByName],
                       [goldDragonText2 getDragonHeadCount],
                       [goldDragonText2 getTotalDragonHeadWeight]];
    
//  Dragon #3 SubClass Accessed (GETTER)   
    partition5 = [[UILabel alloc] initWithFrame:CGRectMake(0, 295, 320, 50)];
    partition5.backgroundColor = [UIColor whiteColor];
    partition5.numberOfLines = 2;
    partition5.textAlignment = UITextAlignmentCenter;
    partition5.font = [UIFont fontWithName:@"Arial" size:14];
    [self.view addSubview:partition5];
    
    BlackDragon *blackDragonText = (BlackDragon*) [DragonFactory GetDragon:2];
    [blackDragonText getDragonByName];
    [blackDragonText getDragonHeadCount];
    [blackDragonText getDragonHeadWeight];
    [blackDragonText getDragonWeight];
    
    partition5.text = [NSString stringWithFormat:@"%@ has %d heads.Each head is %.1f#s. His heads total: %.1f#s. He weighs %.1fK#s total.",
       [blackDragonText getDragonByName],
       [blackDragonText getDragonHeadCount],
       [blackDragonText getDragonHeadWeight],
       [blackDragonText getTotalDragonHeadWeight],
       [blackDragonText getDragonWeight]];

    
// Dragon #3 SubClass MUTATOR/SETTER
    partition6 = [[UILabel alloc] initWithFrame:CGRectMake(0, 365, 320, 50)];
    partition6.backgroundColor = [UIColor blueColor];
    partition6.numberOfLines = 2;
    partition6.textAlignment = UITextAlignmentCenter;
    partition6.font = [UIFont fontWithName:@"Arial" size:14];
    [self.view addSubview:partition6];
    
    BlackDragon *blackDragonText2 = (BlackDragon*) [DragonFactory GetDragon:dragonType_Black];
    [blackDragonText2 getDragonByName];
    [blackDragonText2 setHeadCount:0];
    [blackDragonText2 setTotalDragonHeadWeight:0.0f];
    
    partition6.text = [NSString stringWithFormat:@"%@ was in a battle and lost heads.He now has %d heads left. His heads now total %.1f.",
       [blackDragonText2 getDragonByName],
       [blackDragonText2 getDragonHeadCount],
       [blackDragonText2 getTotalDragonHeadWeight]];

    bottomLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 435, 320, 20)];
    bottomLabel.backgroundColor = [UIColor clearColor];
    bottomLabel.textColor = [UIColor yellowColor];
    bottomLabel.textAlignment = UITextAlignmentCenter;
    bottomLabel.text = @"Nick Weil - AOC2 - 1208";
    [self.view addSubview:bottomLabel];
    
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
