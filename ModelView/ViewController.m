//
//  ViewController.m
//  BBBPopover
//
//  Created by Mikhail Lutskii on 24.06.17.
//  Copyright © 2017 BigBadBird.ru. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "BBBPopoverView.h"

@interface ViewController () <BBBPopoverDelegate>

@end

@implementation ViewController

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)openPopup:(id)sender {
    UIView *vvv = [[UIView alloc] initWithFrame:CGRectMake(0,0,100,100)];
    vvv.backgroundColor = [UIColor redColor];
    
    BBBPopoverView *popover = [BBBPopoverView sharedManager];
    popover.popoverTitle = @"Kartina TV";
    popover.popoverContent = vvv;
    popover.delegate = self;
    [popover showModalOn:self.view];
}

- (void) didTouchUpInsideButton:(id)sender {
    NSLog (@"Click UpInside");
}

- (void) didTouchUpOutsideButton:(id)sender {
    NSLog (@"Click UpOutside");
}

- (void) didTouchDownInsideButton:(id)sender {
    NSLog (@"Click DownInside");
}

@end
