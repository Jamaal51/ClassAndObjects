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
- (void) display;

- (void) setNumberA: (float)a;
- (void) setNumberB: (float)b;

//arithmetic functions
- (void) add;
- (void) subtract;
//- (void) multiply;
//- (void) divide;

@end

@implementation Calculator {
    float NumberA;
    float NumberB;
}

- (void) setNumberA:(float)a {
    NumberA = a;
}
- (void) setNumberB:(float)b {
    NumberB = b;
}

- (void) display {
    NSString *yourNumbers = [NSString stringWithFormat: @"your numbers are: %g, %g", NumberA, NumberB];
    NSLog(@"%@", yourNumbers);
}

- (void) add {
    NSLog(@"%g + %g = %g", NumberA, NumberB, NumberA + NumberB);
}

- (void) subtract {
    NSLog(@"%g - %g = %g", NumberA, NumberB, NumberA - NumberB);
}

- (void) divide {
    NSLog(@"%g / %g = %g", NumberA, NumberB, NumberA / NumberB);
}


@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        float x;
        printf("enter your first number: \n");
        scanf("%g", &x);
        
        float y;
        printf("enter your second number: \n");
        scanf("%g", &y);
        
       
        Calculator *f  = [[Calculator alloc] init];
        
        [f setNumberA: x];
        [f setNumberB: y];
        
        [f display];
        [f add];
        [f subtract];
        [f divide];
        
        
        
        
    
    
    }
    return 0;
}
