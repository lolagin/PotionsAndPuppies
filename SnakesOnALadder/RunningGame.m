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
        self.playerOne = [[Player alloc]initChaosMage:self.walls];
        self.tokenStore = [[NSMutableDictionary alloc] init];
        self.gameLength = (walls * walls);
        [self populate];
    }
    return self;
}

-(void)populate{
    NSMutableArray *puppies = [[NSMutableArray alloc] init];
    NSMutableArray *potions = [[NSMutableArray alloc] init];
   NSUInteger i = self.gameLength;
    while ((i/10) > 0){
        NSInteger puppyRand = arc4random_uniform((u_int32_t)(self.gameLength));
        NSNumber *puppyNumber = [NSNumber numberWithInteger:puppyRand];
        [puppies addObject:puppyNumber];
        NSUInteger potionRand = arc4random_uniform((u_int32_t)(self.gameLength));
        NSNumber *potionNumber = [NSNumber numberWithInteger:potionRand];
        [potions addObject:potionNumber];
        i--;
    }
    [self.tokenStore setObject:puppies forKey:@"puppies"];
    [self.tokenStore setObject:potions forKey:@"potions"];
         }
         
-(void)checkTokens{
 
    [self.tokenStore enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        if ([key isEqualTo:@"puppies"] && [obj isEqualTo:[NSNumber numberWithUnsignedInt:self.playerOne.progress]]){
            [self portalJump:true];
        }
        else if ([key isEqualTo:@"potions"] && [obj isEqualTo:[NSNumber numberWithUnsignedInt:self.playerOne.progress]]){
            [self portalJump:false];
        }
    }];
    
    
    
    
    
}


-(void)portalJump:(BOOL)puppy{
    if (puppy) {
        NSUInteger puppyMinding =  arc4random_uniform((u_int32_t)self.playerOne.progress);
        self.playerOne.progress -= puppyMinding;
        NSLog(@"Uh oh, Hydragon is throwing puppies!\nyou catch the terrified young labrador,\nrunning down the mountain until you encounter a wandering dogherder.\n\nThis excursion takes you back %lu places",(unsigned long)puppyMinding);
    }
    else {
                    NSUInteger potionBoost =  arc4random_uniform((u_int32_t)(self.gameLength - self.playerOne.progress));
        self.playerOne.progress += potionBoost;
        NSLog(@"Hooray, a potion!\nYou guzzle down the warm bitter mystery and feel refreshed\nYou rush up the mountain like a goat with something to prove.\n\nThis effort sends you forward %lu places",(unsigned long)potionBoost);
    }
}
-(void)runGame{
    
    
    while (self.playerOne.progress < self.gameLength) {
        [self.playerOne move];
        [self checkTokens];
    }
    
    NSLog(@"You Win! Waytogo!");
    
}




@end
