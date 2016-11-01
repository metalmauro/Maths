//
//  InputHandler.m
//  Maths
//
//  Created by Matthew Mauro on 2016-11-01.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString *)userInput{
    char input[10];
    fgets(input, 10, stdin);
    NSCharacterSet *hb = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *final = [[NSString stringWithCString:input encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet: hb];
    
    return final;
}

@end
