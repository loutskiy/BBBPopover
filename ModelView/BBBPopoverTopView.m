//
//  BBBPopoverTopView.m
//  BBBPopover
//
//  Created by Mikhail Lutskii on 24.06.17.
//  Copyright © 2017 BigBadBird.ru. All rights reserved.
//

#import "BBBPopoverTopView.h"
#import "BBBPopoverUIButton.h"

@implementation BBBPopoverTopView

- (instancetype)init {
    self = [super init];
    if (self) {
        self = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil] firstObject];
        [self setActionDelegatesForCloseButton];
    }
    return self;
}

- (void) setActionDelegatesForCloseButton {
    _closeButton = (UIButton*)[self viewWithTag:100];
    [self setActionsForButton:_closeButton];
}

- (IBAction)closeAction:(id)sender {
    [self.delegate didTapCloseButton];
}

- (void)setNameText:(NSString *)nameText {
    self.nameLabel = (UILabel*)[self viewWithTag:10];
    self.nameLabel.text = nameText;
}

- (void)setButtons:(NSArray <BBBPopoverButton> *)buttons {
    for (int i = 1; i < buttons.count; i++) {
        BBBPopoverUIButton *button = (BBBPopoverUIButton *)[self viewWithTag:i];
        [self setActionsForButton:button];
    }
}

- (void) setActionsForButton:(id)button {
    [button addTarget:self action:@selector(touchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(touchUpOutside:) forControlEvents:UIControlEventTouchUpOutside];
    [button addTarget:self action:@selector(touchDownInside:) forControlEvents:UIControlEventTouchDown];
}

- (void)touchUpInside:(id)sender {
    BBBPopoverView *pv = [BBBPopoverView sharedManager];
    [pv.delegate didTouchUpInsideButton:sender];
}

- (void)touchUpOutside:(id)sender {
    BBBPopoverView *pv = [BBBPopoverView sharedManager];
    [pv.delegate didTouchUpOutsideButton:sender];
}

- (void)touchDownInside:(id)sender {
    BBBPopoverView *pv = [BBBPopoverView sharedManager];
    [pv.delegate didTouchDownInsideButton:sender];
}

@end
