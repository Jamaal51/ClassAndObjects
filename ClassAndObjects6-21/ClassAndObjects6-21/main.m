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
//- (void) clear;
//- (float) accumulator;


//arithmetic functions
- (void) setCurrentValue:(float)n;
- (void) add:(float)n;
- (void) subtract:(float)n;
- (void) print;
- (void) multiply:(float)n;
- (void) divide:(float)n;
- (void) changeSign;

@end

@implementation Calculator {
    float currentValue;
}

- (void) print{
    NSLog(@"%f", currentValue);
}

- (void) setCurrentValue:(float)n {
    currentValue = n;
}

- (void) add:(float)n {
    currentValue += n;
}

- (void) subtract:(float)n {
    currentValue -= n;
}

- (void) multiply:(float)n {
    currentValue *= n;
}

- (void) divide:(float)n {
    currentValue /= n;
}

- (void) changeSign {
    currentValue *= -1;
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
        [myCalculator changeSign];
        [myCalculator print];
        
    
    }
    return 0;
}
