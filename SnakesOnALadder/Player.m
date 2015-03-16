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
        self.progress = 0;
    }
    return self;
}
-(void)move{

    NSUInteger roll = arc4random_uniform(7);
    self.progress += roll;
    NSLog(@"You rolled a %lu",(unsigned long)roll);
    self. xCord += roll;
    if (self.xCord > self.walls){
        self.xCord = (self.xCord - self.walls);
        self.yCord++;
    }
}

-(void)jump:(NSUInteger)move{
    self.xCord += move % self.walls;
    self.yCord += move/self.walls;
    self.progress += move;

}
-(void)jumpBack:(NSUInteger)move{
    self.xCord -= move % self.walls;
    self.yCord -= move/self.walls;
    self.progress -= move;
    
}





@end
