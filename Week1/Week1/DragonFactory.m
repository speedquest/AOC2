//
//  DragonFactory.m
//  Week1
//
//  Created by Nicholas Weil on 8/2/12.
//  Copyright (c) 2012 SpeedQuest. All rights reserved.
//

#import "DragonFactory.h"
#import "BaseDragons.h"

@implementation DragonFactory

+(BaseDragons*)GetDragon:(int)dragonType
{
    if (dragonType == 0)
    {
        return [[RedDragon alloc] init];
    }
    else if (dragonType == 1)
    {
        return [[GoldDragon alloc] init];
    }
    else if (dragonType == 2)
    {
        return [[BlackDragon alloc] init];
    }
    
    return nil;
}@end
