//
//  main.m
//  SnakesOnALadder
//
//  Created by Jeffrey C Rosenthal on 3/14/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RunningGame.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//todo-- init isrunning/menu,gui,working portals, xy to
        NSLog(@"welcome to snakes on a ladder!\n\nI mean...\nPotions and Puppies.\nIt will make sense, and it is funnier.");
        RunningGame *theGame = [[RunningGame alloc]initWithWalls:5];
        [theGame menu];
    
    
    }
    return 0;
}
