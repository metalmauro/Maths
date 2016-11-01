//
//  ScoreKeeper.h
//  Maths
//
//  Created by Matthew Mauro on 2016-11-01.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic) NSInteger correct;
@property (nonatomic) NSInteger incorrect;
-(void)scoreCard;

-(instancetype)init;

@end
