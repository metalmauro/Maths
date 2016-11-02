//
//  DivisionQuestion.m
//  Maths
//
//  Created by Matthew Mauro on 2016-11-02.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

-(instancetype)init{
    if(self = [super init])
    {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion
{
    super.question = ([NSString stringWithFormat: @"%ld / %ld ?", [super leftVal], [super rightVal] ]);
    super.answer = [super leftVal]/[super rightVal];
}

@end
