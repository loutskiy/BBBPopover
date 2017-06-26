# BBBPopover
This popover I developed for my Project. For use copy files to your Project and make import `#import "BBBPopoverView.h"`.

## Using
For create and show Popover:
```objc
BBBPopoverView *popover = [BBBPopoverView sharedManager];
popover.popoverTitle = @"Title";
popover.delegate = self;
[popover showModalOn:self.view];
```
