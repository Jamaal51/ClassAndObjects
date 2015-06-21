//
//  main.m
//  ClassAndObjects6-21
//
//  Created by Jamaal on 6/21/15.
//  Copyright (c) 2015 Jamaal. All rights reserved.
//

#import <Foundation/Foundation.h>

//Calculator Project - Shena/Jamaal

// Goal - create a calculator with functions

@interface Calculator : NSObject

//set up accumulator
//- (void) setAccumulator: (float) value;
//- (float) accumulator;


//arithmetic functions
- (void) setCurrentValue:(float)n;
- (void) add:(float)n;
- (void) subtract:(float)n;
- (void) print;
- (void) multiply:(float)n;
- (void) divide:(float)n;
- (void) changeSign;
- (void) reciprocal:(float)n;
- (void) clear;
- (void) setMemory:(float)n;
- (void) recall:(float)n;


@end

@implementation Calculator {
    float currentValue;
    float saved;
}

- (void) print{
    NSLog(@"%f", currentValue);
}

- (void) setCurrentValue:(float)n {
    currentValue = n;
    saved = currentValue;
}

- (void) add:(float)n {
    currentValue += n;
    saved = currentValue;
}

- (void) subtract:(float)n {
    currentValue -= n;
    saved = currentValue;
}

- (void) multiply:(float)n {
    currentValue *= n;
    saved = currentValue;
}

- (void) divide:(float)n {
    currentValue /= n;
    saved = currentValue;
}

- (void) changeSign {
    currentValue *= -1;
    saved = currentValue;
}

- (void) reciprocal {
    currentValue = 1/currentValue;
    saved = currentValue;
}

- (void) squared {
    currentValue *= currentValue;
    saved = currentValue;
}

- (void) clear{
    currentValue *= 0;
    saved = currentValue;
}

- (void) printSaved{
    currentValue = saved;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        float x;
//        printf("enter your first number: \n");
//        scanf("%g", &x);

       
        Calculator *myCalculator  = [[Calculator alloc] init];
        
        [myCalculator setCurrentValue:0];
        [myCalculator print];
        [myCalculator add:5];
        [myCalculator print];
        [myCalculator subtract:2];
        [myCalculator print];
        [myCalculator divide:3];
        [myCalculator print];
        [myCalculator multiply:5];
        [myCalculator print];
//        [myCalculator changeSign];
//        [myCalculator print];
//        [myCalculator reciprocal];
//        [myCalculator print];
//        [myCalculator squared];
//        [myCalculator print];
//        [myCalculator clear];
//        [myCalculator print];
        [myCalculator printSaved];
        [myCalculator print];
        

    }
    return 0;
}
