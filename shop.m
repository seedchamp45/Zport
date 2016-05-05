//
//  shop.m
//  football2
//
//  Created by Thanawith Munkatitum on 6/14/2558 BE.
//  Copyright (c) 2558 Apportable. All rights reserved.
//

#import "shop.h"

@implementation shop

- (void)field{
    CCScene *gameplayScene = [CCBReader loadAsScene:@"fieldandshop"];
    [[CCDirector sharedDirector] replaceScene:gameplayScene];
}

- (void)shop{
    CCScene *gameplayScene = [CCBReader loadAsScene:@"shop"];
    [[CCDirector sharedDirector] replaceScene:gameplayScene];
}

- (void)friend{
    CCScene *gameplayScene = [CCBReader loadAsScene:@"friend"];
    [[CCDirector sharedDirector] replaceScene:gameplayScene];
}

- (void)profile{
    CCScene *gameplayScene = [CCBReader loadAsScene:@"profile"];
    [[CCDirector sharedDirector] replaceScene:gameplayScene];
}


@end
