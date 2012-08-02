//
//  TextClass.m
//  Week1
//
//  Created by Nicholas Weil on 8/1/12.
//  Copyright (c) 2012 SpeedQuest. All rights reserved.
//

#import "TextClass.h"

@implementation TextClass

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        // whatever needs to be initialized
        intValue = 4;
        floatValue = 10.3;
        
    }
    return self;
}

-(NSString*)getText
{
    text = [NSString stringWithFormat:@"integer = %d, float = %f", intValue, floatValue];
    if (text != nil)
    {
        return text;
    }
    return nil;
}
@end
