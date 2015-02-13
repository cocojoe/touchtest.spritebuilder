#import "MainScene.h"
#import "CustomNode.h"

@implementation MainScene {
    CustomNode* _sbNode;
}

// Add Touch Enabled Nodes In Xcode
- (CustomNode*)createTouchNode:(CCColor*) color {
    CustomNode* node = [CustomNode nodeWithColor:color width:50.0 height:50.0];
    return node;
}

- (void)didLoadFromCCB {
    self.userInteractionEnabled = YES;
    
    // Set SB Defined Node Name
    [_sbNode setName:@"Mr SB Node"];
    
    // Create Custom Node(s)
    CustomNode* node = [self createTouchNode:[CCColor greenColor]];
    [node setPosition:ccp(50,50)];
    [node setName:@"Mr Code Green"];
    [self addChild:node z:10];
    
    // Create Custom Node(s)
    node = [self createTouchNode:[CCColor redColor]];
    [node setPosition:ccp(200,200)];
    [node setName:@"Mr Code Red"];
    [self addChild:node z:10];
}

// Button Touch
- (void)buttonTouch {
    CCLOG(@"MainScene: Button Touched (I take priority)");
}


// Scene Touch
- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
    CCLOG(@"MainScene: Screen Touched");
}

@end
