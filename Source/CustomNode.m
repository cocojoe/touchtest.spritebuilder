//
//  CustomNode.m
//  touchtest
//
//  Created by Martin Walsh on 13/02/2015.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "CustomNode.h"

@implementation CustomNode

- (void)onEnter {
    [super onEnter];
     self.userInteractionEnabled = YES;
}

// Scene Touch
- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
    CCLOG(@"CustomNode: You touched %@ %f,%f",self.name,self.positionInPoints.x,self.positionInPoints.y);
}


@end
