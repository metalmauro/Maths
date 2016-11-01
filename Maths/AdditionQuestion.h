//
//  AdditionQuestion.h
//  Maths
//
//  Created by Matthew Mauro on 2016-11-01.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//
#include <stdlib.h>
#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (nonatomic) NSString *question;
@property (nonatomic) NSInteger answer;

-(instancetype)init;

@end
