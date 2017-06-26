//
//  BBBPopover.h
//  BBBPopover
//
//  Created by Mikhail Lutskii on 24.06.17.
//  Copyright © 2017 BigBadBird.ru. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BBBPopoverTopView.h"
#import "BBBPopoverView.h"

@interface BBBPopover : UIView

@property (nonatomic, strong) BBBPopoverTopView *popoverTopView;

@property (nonatomic, strong) UIView *currentViewFromVC;

@property (nonatomic, strong) UIView *contentView;

/**
 This method add some view to Popover

 @param contentView some view (ex. UIView, UIImageView, etc)
 */
- (void) addContentToPopover:(id) contentView;

@end
