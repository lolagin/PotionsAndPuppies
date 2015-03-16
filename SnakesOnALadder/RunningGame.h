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
@property (assign, nonatomic)BOOL isRunning;
@property (strong, nonatomic)NSString *playerName;


-(instancetype)initWithWalls:(NSUInteger)walls;

-(void)inputName;
-(void)inputWalls;
-(void)menu;
-(void)populate;
-(void)checkTokens;
-(void)portalJump:(BOOL)puppy;
-(void)runGame;
-(void)restartGame;

//-(void)portalRange; //range = index player.health range,



@end
