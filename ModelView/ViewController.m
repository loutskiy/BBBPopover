//
//  ViewController.m
//  BBBPopover
//
//  Created by Михаил Луцкий on 24.06.17.
//  Copyright © 2017 BigBadDird. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "BBBPopoverControll.h"

@implementation ViewController

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)openPopup:(id)sender {
    [[BBBPopoverControll alloc] showModalOn:self.view];
}

@end
