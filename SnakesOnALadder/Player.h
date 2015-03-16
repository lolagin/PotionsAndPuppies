//
//  Player.h
//  SnakesOnALadder
//
//  Created by Jeffrey C Rosenthal on 3/15/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tokens.h"

@interface Player : Tokens
@property (assign, nonatomic) NSUInteger health;
@property (assign, nonatomic) NSUInteger strength;
@property (assign, nonatomic) NSUInteger progress;

-(instancetype)initChaosMage:(NSUInteger)walls;

-(void)move;







@end
