//
//  QuestionManager.m
//  Maths
//
//  Created by Matthew Mauro on 2016-11-02.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager


-(instancetype)init
{
    if(self = [super init])
    {
        _questions = [NSMutableArray new];
    }
    return self;
}

-(NSString *)timeOutput
{
    int totalTime = 0;
    for (AdditionQuestion *q in _questions)
    {
        totalTime += [q answerTime];
    }
    int averageTime = (totalTime / _questions.count);
    NSString *outPut = [NSString stringWithFormat:@"total time is %d seconds.\n Average time per question is %d seconds. \n", totalTime, averageTime];
    return outPut;
}

@end
