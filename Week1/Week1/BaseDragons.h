//
//  BaseDragons.h
//  Week1
//
//  Created by Nicholas Weil on 8/2/12.
//  Copyright (c) 2012 SpeedQuest. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    dragonType_Red=0,  // enumerating each dragon starting with 0
    dragonType_Gold,
    dragonType_Black
} currentDragonType;

@interface BaseDragons : NSObject  // BaseDragons inherits from the NSObject
{
    @protected                     //  Protecting the variables from prying eyes
    currentDragonType dragonType;  //  declaring the dragonType variable
    NSString *dragonName;          //  declaring the dragonName variable
    int dragonHeadCount;           //  declaring the dragonHeadCount variable
    float dragonHeadWeight;        //  declaring the dragonHeadWeight variable
    float totalDragonHeadWeight;   //  declaring the totalDragonHeadWeight variable
    float dragonWeight;            //  declaring the dragonWeight variable
}

//  Getters (METHODS)
-(NSString*)getDragonByName;        // Get Dragon by name METHOD
-(int)getDragonHeadCount;           // Get Dragons number of heads METHOD
-(float)getDragonHeadWeight;        // Get Dragons head weight METHOD
-(float)getTotalDragonHeadWeight;   // Get Dragons total head weight METHOD
-(float)getDragonWeight;            // Get Dragons weight METHOD

// Setters (METHODS)
-(void)setHeadCount: (int)setNewHeads;      //  Set new number of heads
-(void)setDragonHeadWeight: (float)setNewDragonHeadWeight;  // Set new Head Weight
-(void)setTotalDragonHeadWeight: (float)setNewTotalDragonHeadWeight;  // Set new total Head Weight
-(void)setDragonWeight: (float)setNewDragonWeight;  // Set new dragon weight


@end
