//
//  RunningGame.m
//  SnakesOnALadder
//
//  Created by Jeffrey C Rosenthal on 3/15/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import "RunningGame.h"




@implementation RunningGame

-(instancetype)initWithWalls:(NSUInteger)walls{
    self = [super init];
    if (self){
        self.walls = walls;
    }
    return self;
}





@end
