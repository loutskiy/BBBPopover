//
//  BBBPopoverControll.m
//  BBBPopover
//
//  Created by Михаил Луцкий on 24.06.17.
//  Copyright © 2017 BigBadDird. All rights reserved.
//

#import "BBBPopoverControll.h"
#import "BBBPopover.h"

@implementation BBBPopoverControll

- (void) showModalOn:(UIView *)view {
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;

    BBBPopover *modalView = [[BBBPopover alloc] initWithFrame:CGRectMake(0, 28, width, height)];
    [modalView.popoverTopView setNameText:@"Panasonic TV"];
    CGPoint middleCenter;
    middleCenter = CGPointMake(modalView.center.x, modalView.center.y);
    
    CGSize offSize = [UIScreen mainScreen].bounds.size;
    
    CGPoint offScreenCenter = CGPointMake(offSize.width / 2.0, offSize.height * 1.5);
    modalView.center = offScreenCenter;
    
    if ([[view subviews] containsObject:modalView]) {
        [modalView removeFromSuperview];
    }
    
    [view addSubview:modalView];
    
    [view bringSubviewToFront:modalView];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    modalView.center = middleCenter;
    [UIView commitAnimations];
    
}

- (void) hideModal:(UIView*) modalView {
    CGSize offSize = modalView.bounds.size;
    CGPoint offScreenCenter = CGPointMake(offSize.width / 2.0, offSize.height * 1.5);
    [UIView beginAnimations:nil context:(__bridge void *)(modalView)];
    [UIView setAnimationDuration:0.3];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(hideModalEnded:finished:context:)];
    modalView.center = offScreenCenter;
    [UIView commitAnimations];
}

- (void) hideModalEnded:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {
    
    UIView *modalView = (__bridge UIView *)context;
    [modalView removeFromSuperview];
}

@end
