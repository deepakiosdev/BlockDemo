//
//  Car.h
//  BlockDemo
//
//  Created by Deepak on 15/03/14.
//  Copyright (c) 2014 Deepak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property double odometer;

- (void)driveForDuration:(double)duration
       withVariableSpeed:(double (^)(double time))speedFunction
                   steps:(int)numSteps;

@end