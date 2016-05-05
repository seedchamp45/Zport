//
//  screen2.m
//  football2
//
//  Created by Thanawith Munkatitum on 6/14/2558 BE.
//  Copyright (c) 2558 Apportable. All rights reserved.
//

#import "screen2.h"

@implementation screen2

- (void)ok{
    CCScene *gameplayScene = [CCBReader loadAsScene:@"profile"];
    [[CCDirector sharedDirector] replaceScene:gameplayScene];
}


@end
