//
//  QuestionManager.h
//  Maths
//
//  Created by Matthew Mauro on 2016-11-02.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject

@property NSMutableArray *questions;

-(instancetype)init;
-(NSString *)timeOutput;

@end
