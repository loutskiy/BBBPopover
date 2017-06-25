//
//  BBBPopoverTopView.h
//  BBBPopover
//
//  Created by Михаил Луцкий on 24.06.17.
//  Copyright © 2017 BigBadDird. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BBBPopoverControll.h"

@protocol BBBPopoverTopDelegate;
@protocol BBBPopoverBarButtonsDelegate;

@interface BBBPopoverTopView : UIView

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIButton *closeButton;
@property (nonatomic, strong) id <BBBPopoverTopDelegate> delegate;
@property (nonatomic, strong) id <BBBPopoverBarButtonsDelegate> barButtonsDelegate;

- (IBAction)closeAction:(id)sender;
- (void)setNameText:(NSString *)nameText;
- (void)setButtons:(NSArray *)buttons;

@end


@protocol BBBPopoverTopDelegate

- (void) didTapCloseButton;

@end

@protocol BBBPopoverBarButtonsDelegate

- (void) didTouchUpInsideButton:(id)sender;

@end
