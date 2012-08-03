//
//  RedDragon.h
//  Week1
//
//  Created by Nicholas Weil on 8/2/12.
//  Copyright (c) 2012 SpeedQuest. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseDragons.h"  //  RedDragons can't inherit if the BaseDragons is not imported

@interface RedDragon : BaseDragons // RedDragon must inherit from BaseDragons

-(NSString*)getDragonByName;
-(int)getDragonHeadCount;
-(float)getDragonHeadWeight;
-(float)getTotalDragonHeadWeight;

@end
