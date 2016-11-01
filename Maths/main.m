//
//  main.m
//  Maths
//
//  Created by Matthew Mauro on 2016-11-01.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//
#include <stdlib.h>
#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper *SK = [[ScoreKeeper alloc]init];
        
        while (gameOn == YES) {

            AdditionQuestion *new = [[AdditionQuestion alloc]init];
            InputHandler *Ih = [[InputHandler alloc]init];
            
            NSLog(@"%@", new.question);

            NSString *answer = [Ih userInput];
            
            if ([answer isEqualToString:@"quit"]){
                break;
            }
            
            NSInteger newAns = [answer integerValue];
            
            if(newAns == new.answer){
                NSLog(@"Right!");
                SK.correct++;
            }else{
                NSLog(@"WRONG!");
                SK.incorrect++;
            }
            [SK scoreCard];
            
        }
        
    }
    return 0;
}
