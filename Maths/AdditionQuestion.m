//
//  AdditionQuestion.m
//  Maths
//
//  Created by Matthew Mauro on 2016-11-01.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//
#include <stdlib.h>
#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(instancetype)init{
    if(self = [super init]){
        
        int first = arc4random_uniform(100);
        int second = arc4random_uniform(100);
        NSInteger answer = (first + second);
        NSString *question = [NSString stringWithFormat:@"What is %d + %d", first, second];
        
        _question = question;
        _answer = answer;
        
        
        
    }
    return self;
}


@end
