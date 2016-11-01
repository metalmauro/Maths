//
//  ScoreKeeper.m
//  Maths
//
//  Created by Matthew Mauro on 2016-11-01.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(void)scoreCard{

    float percentage = ((self.correct/(self.correct + self.incorrect))*100);
    NSLog(@"Score so far: %ld were correct. %ld were incorrect. \n --- %f Percent Correct", self.correct, self.incorrect, percentage);
    
}

-(instancetype)init{
    if(self = [super init]){
        _correct = 0;
        _incorrect = 0;
    }
    return self;
}


@end
