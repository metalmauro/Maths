//
//  QuestionFactory.m
//  Maths
//
//  Created by Matthew Mauro on 2016-11-02.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

-(instancetype)init
{
    if(self = [super init])
    {
        _questionSubs = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

-(Question *)generateRandomQuestion
{
    int rand = arc4random_uniform(3);
    return [[NSClassFromString([self.questionSubs objectAtIndex:rand]) alloc]init];
    
}

@end
