//
//  QuestionFactory.h
//  Maths
//
//  Created by Matthew Mauro on 2016-11-02.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import "Question.h"

@interface QuestionFactory : Question

@property NSArray *questionSubs;

-(instancetype)init;

-(Question *)generateRandomQuestion;

@end
