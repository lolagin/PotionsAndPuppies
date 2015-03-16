//
//  RunningGame.h
//  SnakesOnALadder
//
//  Created by Jeffrey C Rosenthal on 3/15/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tokens.h"
#import "Player.h"

@interface RunningGame : NSObject
@property (strong, nonatomic)Player *playerOne;
@property (assign, nonatomic)NSUInteger walls;
@property (assign, nonatomic)NSUInteger gameLength;
@property (strong, nonatomic)NSMutableDictionary *tokenStore;


-(instancetype)initWithWalls:(NSUInteger)walls;

-(void)populate;
-(void)checkTokens;
-(void)portalJump:(BOOL)puppy;

-(void)runGame;
//-(void)rollDice;
//-(void)playerMove; //uses rollDice
-(void)portalRange; //range = index player.health range,



@end
