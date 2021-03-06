//
//  Question.h
//  Maths
//
//  Created by Matthew Mauro on 2016-11-01.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//
#include <stdlib.h>
#import <Foundation/Foundation.h>

@interface Question : NSObject

@property NSInteger leftVal;
@property NSInteger rightVal;
@property (nonatomic) NSString *question;
@property (nonatomic) NSInteger answer;
@property NSDate *startTime;
@property NSDate *endTime;

-(void)generateQuestion;
-(NSInteger)answer;
-(NSTimeInterval)answerTime;
-(instancetype)init;

@end
