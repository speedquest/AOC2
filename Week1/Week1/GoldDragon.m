//
//  GoldDragon.m
//  Week1
//
//  Created by Nicholas Weil on 8/2/12.
//  Copyright (c) 2012 SpeedQuest. All rights reserved.
//

#import "GoldDragon.h"
#import "BaseDragons.h"

@implementation GoldDragon

-(id)init           //  Setting all the initial values (not really used for this)
{
    self = [super init];
    if (self != nil)
    {
        dragonName = @"Midas";
        dragonHeadCount = 2;
        dragonHeadWeight = 250.0f;
        totalDragonHeadWeight = 500.0f;
        dragonWeight = 9.0f;
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

-(float)getDragonWeight         //  Get the Dragon Weight
{
    return dragonWeight;
}

-(float)getTotalDragonHeadWeight    //  Get and calculate all of the head weights
{
    totalDragonHeadWeight = (float)(dragonHeadWeight * dragonHeadCount);
    return totalDragonHeadWeight;
}

@end
