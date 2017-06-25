//
//  BBBPopover.m
//  BBBPopover
//
//  Created by Михаил Луцкий on 24.06.17.
//  Copyright © 2017 BigBadDird. All rights reserved.
//

#import "BBBPopover.h"

@interface BBBPopover () <BBBPopoverTopDelegate> {
    CGPoint panBegan;
}

@end

@implementation BBBPopover

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setBlur];
        [self setPopoverTop];
    }
    return self;
}

- (void) setBlur {
    self.backgroundColor = [UIColor clearColor];
    UIVisualEffect *blurEffect;
    blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
    UIVisualEffectView *visualEffectView;
    visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    visualEffectView.frame = self.bounds;
    visualEffectView.userInteractionEnabled = NO;
    visualEffectView.exclusiveTouch = NO;
    self.layer.cornerRadius = 10;
    self.clipsToBounds = YES;
    [self insertSubview:visualEffectView atIndex:0];
}

- (void) setPopoverTop {
    self.popoverTopView = [[BBBPopoverTopView alloc] init];
    self.popoverTopView.delegate = self;
    self.popoverTopView.backgroundColor = [UIColor clearColor];
    self.popoverTopView.frame = CGRectMake(16, 14, self.frame.size.width-32, self.popoverTopView.frame.size.height);
    [self addSubview:self.popoverTopView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    panBegan = [touch locationInView:self];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    if ([touch view] == self.popoverTopView) {
        CGPoint newCoord = [touch locationInView:self];
        if (newCoord.y > panBegan.y - 10) {
            float dY = newCoord.y-panBegan.y;
            self.frame = CGRectMake(self.frame.origin.x, 28 + dY, self.frame.size.width, self.frame.size.height);
        }
        return;
    }
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    if ([touch view] == self.popoverTopView) {
        CGPoint newCoord = [touch locationInView:self];
        if (newCoord.y - panBegan.y > 100) {
            [[BBBPopoverControll alloc] hideModal:self];
        } else {
            self.frame = CGRectMake(self.frame.origin.x, 28 , self.frame.size.width, self.frame.size.height);
        }
        return;
    }
}

- (void)didTapCloseButton {
    [[BBBPopoverControll alloc] hideModal:self];
}

@end
