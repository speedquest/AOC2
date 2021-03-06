//
//  DragonFactory.h
//  Week1
//
//  Created by Nicholas Weil on 8/2/12.
//  Copyright (c) 2012 SpeedQuest. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseDragons.h"
#import "RedDragon.h"
#import "GoldDragon.h"
#import "BlackDragon.h"

//  Defining the dragon types by number
#define dragonType_Red 0
#define dragonType_Gold 1
#define dragonType_Black 2


@interface DragonFactory : NSObject

+(BaseDragons*)GetDragon:(int)dragonType;  //  Static Class 

@end
