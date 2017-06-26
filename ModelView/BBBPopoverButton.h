//
//  BBBPopoverButton.h
//  BBBPopover
//
//  Created by Mikhail Lutskii on 25.06.17.
//  Copyright © 2017 BigBadBird.ru. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BBBPopoverButton;

@interface BBBPopoverButton : NSObject {
    NSString *iconImage;
}

@property (nonatomic,retain) NSString *iconImage;

@end
