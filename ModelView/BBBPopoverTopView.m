//
//  BBBPopoverTopView.m
//  BBBPopover
//
//  Created by Михаил Луцкий on 24.06.17.
//  Copyright © 2017 BigBadDird. All rights reserved.
//

#import "BBBPopoverTopView.h"

@implementation BBBPopoverTopView

- (instancetype)init {
    self = [super init];
    if (self) {
        self = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil] firstObject];
    }
    return self;
}

- (IBAction)closeAction:(id)sender {
    [self.delegate didTapCloseButton];
}

- (void)setNameText:(NSString *)nameText {
    self.nameLabel = (UILabel*)[self viewWithTag:10];
    self.nameLabel.text = nameText;
}

- (void)setButtons:(NSArray *)buttons {
    
}

@end
