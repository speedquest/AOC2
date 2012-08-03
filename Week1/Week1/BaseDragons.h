//
//  BaseDragons.h
//  Week1
//
//  Created by Nicholas Weil on 8/2/12.
//  Copyright (c) 2012 SpeedQuest. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum
{
    dragonType_Red=0,  // enumerating each dragon starting with 0
    dragonType_Gold,
    dragonType_Black
} currentDragonType;

@interface BaseDragons : NSObject  // BaseDragons inherits from the NSObject
{
    @protected  //  Protecting the variables from prying eyes
    currentDragonType dragonType;  //  declaring the dragonTypevvariable
    NSString *dragonName;          //  declaring the dragonName variable
    
    int dragonHeadCount;           //  declaring the dragonHeadCount variable
    
    float dragonWeight;            //  declaring the dragonWeight variable
}

-(void)setAttributes:(currentDragonType)Type name:(NSString*)name HeadCount:(int)HeadCount;  // creating the Method called setAttributes

@end
