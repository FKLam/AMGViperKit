//
//  UIViewController+AMGViperRouter.m
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "UIViewController+AMGViperRouter.h"

@implementation UIViewController (AMGViperRouter)

- (BOOL)AMG_isAppRootViewController {
    NSAssert([UIApplication sharedApplication].delegate.window.rootViewController, @"Can't find rootViewController");
    return [UIApplication sharedApplication].delegate.window.rootViewController == self;
}

- (BOOL)AMG_isRemoving {
    UIViewController *destination = (UIViewController *)self;
    UIViewController *node = destination;
    while ( node ) {
        if ( node.isMovingFromParentViewController ||
            (!node.parentViewController && !node.presentingViewController && ![node AMG_isAppRootViewController])) {
            return YES;
        } else if ( node.isBeingDismissed ) {
            return YES;
        } else {
            node = node.parentViewController;
            continue;
        }
        break;
    }
    return NO;
}

@end
