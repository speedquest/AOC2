//
//  BaseDragons.m
//  Week1
//
//  Created by Nicholas Weil on 8/2/12.
//  Copyright (c) 2012 SpeedQuest. All rights reserved.
//

#import "BaseDragons.h"  // imports the BaseDragon.h file for use

@implementation BaseDragons

-(id)init           //  Setting all the initial values (not really used for this)
{
    self = [super init];
    if (self != nil)
    {
        dragonName = @"Pete's Dragon";
        dragonHeadCount = 0;
        dragonHeadWeight = 0;
        totalDragonHeadWeight = 0;
        dragonWeight = 0;
    }
    return self;
}

// Calling Getter METHODS
-(NSString*)getDragonByName         // Get the Dragon name (Calling the METHOD)
{
    return dragonName;
}

-(int)getDragonHeadCount            // Get the Dragon Head Count
{
    return dragonHeadCount;
}

-(float)getDragonHeadWeight         //  Get the Dragon Head Weight
{
    return dragonHeadWeight;
}

-(float)getTotalDragonHeadWeight    //  Get and calculate all of the head weights
{
    totalDragonHeadWeight = (float)(dragonHeadWeight * dragonHeadCount);
    return totalDragonHeadWeight;
}


//  Setters (METHODS)
-(void)setHeadCount: (int)setNewHeads
{
    dragonHeadCount = setNewHeads;
}

-(void)setTotalDragonHeadWeight: (float)setNewTotalDragonHeadWeight
{
    dragonHeadWeight = setNewTotalDragonHeadWeight;
}

@end
