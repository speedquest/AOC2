//
//  CalculatorBrain.h
//  Week2
//
//  Created by Nicholas Weil on 8/8/12.
//  Copyright (c) 2012 Nicholas Weil. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MainBrain : NSObject
{
@private
    double operand;             //  This is the SECOND digit(s) pressed
    NSString *waitingOperation;
    double waitingOperand;      //  This is the FIRST digit(s) pressed 
}

//  This sets the operand
@property double operand;


//This will perform an operation (+ - / *)
-(double)performOperation:(NSString *)operation;


@end
