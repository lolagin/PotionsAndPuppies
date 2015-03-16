//
//  Tokens.m
//  SnakesOnALadder
//
//  Created by Jeffrey C Rosenthal on 3/15/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import "Tokens.h"

@implementation Tokens
-(instancetype)initWithLimits:(NSUInteger)wallIn{
    self = [super init];
    if (self){
        
//        self.xCord =  arc4random_uniform((u_int32_t)wallIn) + 1;
//        self.yCord =  arc4random_uniform((u_int32_t)wallIn) + 1;
        self.walls = wallIn;
        self.placement = arc4random_uniform((u_int32_t)(wallIn * wallIn));
        
        
//        array wtih enumerator to loop through and generate at interval
    }
    return self;
}




@end
