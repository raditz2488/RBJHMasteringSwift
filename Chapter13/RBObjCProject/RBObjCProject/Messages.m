//
//  Messages.m
//  RBObjCProject
//
//  Created by Rohan Bhale on 15/08/17.
//  Copyright © 2017 RB. All rights reserved.
//

#import "Messages.h"

@implementation Messages

NSMutableArray *theMessages;

-(id)init {
    if (self = [super init]) {
        theMessages = [[NSMutableArray alloc] init];
        [theMessages addObject:@"You should learn from your mistakes"];
        [theMessages addObject:@"It is in the now that we must live"];
        [theMessages addObject:@"The greatest risk is not taking one"];
        [theMessages addObject:@"You will be a Swift Programmer"];
    }
    return self;
}

-(NSString*)getMessage {
    int num = arc4random() % theMessages.count;
    return theMessages[num];
}

@end
