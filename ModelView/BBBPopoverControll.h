//
//  BBBPopoverControll.h
//  BBBPopover
//
//  Created by Михаил Луцкий on 24.06.17.
//  Copyright © 2017 BigBadDird. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BBBPopoverControll : NSObject

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
