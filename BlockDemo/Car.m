//
//  Car.m
//  BlockDemo
//
//  Created by Deepak on 15/03/14.
//  Copyright (c) 2014 Deepak. All rights reserved.
//

#import "Car.h"

@implementation Car

@synthesize odometer = _odometer;

- (void)driveForDuration:(double)duration
       withVariableSpeed:(double (^)(double time))speedFunction
                   steps:(int)numSteps {
    NSLog(@"2222222222222");

    double dt = duration / numSteps;
    for (int i=1; i<=numSteps; i++) {
        NSLog(@"------dt:%f,i:%d",dt,i);
        _odometer += speedFunction(i*dt) * dt;
        NSLog(@"3333333333333333333333");

    }
    NSLog(@"duration:%f,odometer:%f,numSteps:%d",duration,_odometer,numSteps);
}
@end
