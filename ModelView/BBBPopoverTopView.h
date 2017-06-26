//
//  BBBPopoverTopView.h
//  BBBPopover
//
//  Created by Mikhail Lutskii on 24.06.17.
//  Copyright © 2017 BigBadBird.ru. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BBBPopoverView.h"
#import "BBBPopoverButton.h"

@protocol BBBPopoverTopDelegate;

@interface BBBPopoverTopView : UIView

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIButton *closeButton;
@property (nonatomic, strong) id <BBBPopoverTopDelegate> delegate;

/**
 Action for close button

 @param sender UIButton
 */
- (IBAction)closeAction:(id)sender;

/**
 Set title for Popover

 @param nameText title
 */
- (void)setNameText:(NSString *)nameText;

/**
 Set top buttons for Popover

 @param buttons array of BBBPopoverButtons (max 3)
 */
- (void)setButtons:(NSArray <BBBPopoverButton> *)buttons;

@end


@protocol BBBPopoverTopDelegate

/**
 This delegate method send signal when user click close button
 */
- (void) didTapCloseButton;

@end
