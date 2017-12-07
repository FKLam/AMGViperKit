//
//  UIApplication+AMGViperRouter.m
//  AMGViperText
//
//  Created by amglfk on 2017/12/5.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "UIApplication+AMGViperRouter.h"
#import "AMGRouter.h"

@implementation UIApplication (AMGViperRouter)

- (AMGRouter *)AMG_router {
    return [[AMGRouter alloc] init];
}

@end
