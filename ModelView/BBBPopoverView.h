//
//  BBBPopoverView.h
//  BBBPopover
//
//  Created by Mikhail Lutskii on 24.06.17.
//  Copyright © 2017 BigBadBird.ru. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BBBPopoverButton.h"
#import "BBBPopoverTopView.h"

@protocol BBBPopoverDelegate;

@interface BBBPopoverView : NSObject

@property (nonatomic, retain) NSArray <BBBPopoverButton>* popoverTopButtons;

@property (nonatomic, retain) NSString* popoverTitle;

@property (nonatomic, retain) id popoverContent;

@property (nonatomic, strong) id <BBBPopoverDelegate> delegate;

/**
 Shared Manager Initialization for BBBPopoverView class

 @return self
 */
+ (id)sharedManager;

/**
 This method open popover

 @param view Main view
 */
- (void) showModalOn:(UIView*) view;

/**
 This method close popover

 @param modalView popover view
 */
- (void) hideModal:(UIView*) modalView;

@end


@protocol BBBPopoverDelegate

@optional
- (void) didTouchUpInsideButton:(id)sender;
- (void) didTouchUpOutsideButton:(id)sender;
- (void) didTouchDownInsideButton:(id)sender;

@end
