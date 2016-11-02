//
//  Question.m
//  Maths
//
//  Created by Matthew Mauro on 2016-11-01.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//
#include <stdlib.h>
#import "Question.h"

@implementation Question

-(instancetype)init{
    if(self = [super init])
    {
        _leftVal = arc4random_uniform(100);
        _rightVal = arc4random_uniform(100);
        
        _startTime = [NSDate date];
    }
    return self;
}

-(void)generateQuestion
{
    
}

-(NSInteger)answer
{
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime
{
    return [self.endTime timeIntervalSinceDate:self.startTime];
}

@end
