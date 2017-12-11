//
//  AMGDetailService.m
//  AMGViperText
//
//  Created by amglfk on 2017/12/5.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "AMGDetailService.h"

@implementation AMGDetailService

+ (instancetype)sharedInstance {
    static AMGDetailService *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[AMGDetailService alloc] init];
    });
    return shared;
}

@end
