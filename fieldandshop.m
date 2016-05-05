//
//  fieldandshop.m
//  football2
//
//  Created by Thanawith Munkatitum on 6/14/2558 BE.
//  Copyright (c) 2558 Apportable. All rights reserved.
//

#import "fieldandshop.h"

@implementation fieldandshop

{
    NSInteger score;
}

-(void)didloadfromCCB
{
    
    
    
}

- (void)field{
 
    NSString *rawStr = [NSString stringWithFormat:@"hb=%ldld",(long)score];
    NSData *data = [rawStr dataUsingEncoding:NSUTF8StringEncoding];
    
    NSURL *url = [NSURL URLWithString:@"http://192.168.33.10:8000/findmatch?ss"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:data];
    
    
    
    NSString *postLength = [NSString stringWithFormat:@"%d", [data length]];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"score"
   forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:data];
    NSData *urlData = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSLog(@"Succeeded! Received %d bytes of data",[urlData length]);
    NSLog(@"Your %ld ",(long)score);
    
    NSString *outputdata = [[NSString alloc] initWithData:urlData
                                                 encoding:NSASCIIStringEncoding];
    NSLog(@"Outputdata is %@",outputdata);
    
    
    NSURLResponse *response;
    NSError *error;
    [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    if(error==nil){
        NSLog(@"Error is nil");}
    else{
        NSLog(@"Error is not nil");
        
    }
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
