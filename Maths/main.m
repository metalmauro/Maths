//
//  main.m
//  Maths
//
//  Created by Matthew Mauro on 2016-11-01.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//
#include <stdlib.h>
#import <Foundation/Foundation.h>
#import "Question.h"
#import "ScoreKeeper.h"
#import "InputHandler.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper *SK = [[ScoreKeeper alloc]init];
        QuestionManager *QM = [[QuestionManager alloc]init];
        QuestionFactory *QF = [[QuestionFactory alloc]init];
        
        while (gameOn == YES) {

            Question *new = [QF generateRandomQuestion];
            
            [QM.questions addObject:new];
            
            InputHandler *Ih = [[InputHandler alloc]init];
            
            NSLog(@"%@", new.question);

            NSString *answer = [Ih userInput];
            
            if ([answer isEqualToString:@"quit"]){
                break;
            }
            
            NSInteger newAns = [answer integerValue];
            NSInteger answ = [new answer];
            
            if(newAns == answ){
                NSLog(@"Right!");
                SK.correct++;
            }else{
                NSLog(@"WRONG!");
                SK.incorrect++;
            }
            [SK scoreCard];
            NSLog(@"%@", [QM timeOutput]);
            
        }
        
    }
    return 0;
}
