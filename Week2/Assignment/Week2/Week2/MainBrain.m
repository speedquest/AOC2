//
//  CalculatorBrain.m
//  Week2
//
//  Created by Nicholas Weil on 8/8/12.
//  Copyright (c) 2012 Nicholas Weil. All rights reserved.
//

#import "MainBrain.h"

@implementation MainBrain
@synthesize operand;


//  MATH CALCULATIONS ARE DONE HERE  waitingOperand = first digit(s) entered, operand = second digit(s) entered
- (void)performWaitingOperation
{
    if([@"+" isEqual:waitingOperation])     //  If + is pressed add waitingOperand to operand
    {
        operand = waitingOperand + operand;
    }
    else if([@"-" isEqual:waitingOperation]) //  If - is pressed subtract waitingOperand from operand
    {
        operand = waitingOperand - operand;
    }
    else if([@"*" isEqual:waitingOperation]) //  If * is pressed multiply waitingOperand with operand
    {
        operand = waitingOperand * operand;
    }
    else if([@"/" isEqual:waitingOperation])  //  If / is pressed divide waitingOperand by operand
    {
        if(operand)
        {
            operand = waitingOperand / operand;
        }
    }
}

-(double)performOperation:(NSString *)operation;
{
    if ([@"C" isEqual:operation])  //  If CLEAR is depressed the operand is zeroed and no other operation is waiting
	{
		operand = 0;
		waitingOperation = nil;
		waitingOperand = 0;
	}
    else
    {
        //method performWaitingOperation called on itself(self) to perform waitingOperation
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    return operand;
}
    

@end
