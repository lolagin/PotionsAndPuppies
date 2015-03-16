//
//  Player.m
//  SnakesOnALadder
//
//  Created by Jeffrey C Rosenthal on 3/15/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import "Player.h"
@interface Player ()

@end
@implementation Player

-(instancetype)initChaosMage:(NSUInteger)walls{
    self = [super init];
    if (self){
        self.walls = walls;
        self.xCord = 0;
        self.yCord = 0;
        self.health = 100;
        self.strength = 4;
        
    }

    return self;
}


@end
