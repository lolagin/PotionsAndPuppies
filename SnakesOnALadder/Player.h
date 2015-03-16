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
@property (assign, nonatomic) NSUInteger walls;
@property (assign, nonatomic) NSUInteger xCord;
@property (assign, nonatomic) NSUInteger yCord;
@property (assign, nonatomic) NSUInteger health;
@property (assign, nonatomic) NSUInteger strength;

-(instancetype)initChaosMage:(NSUInteger)walls;

@end
