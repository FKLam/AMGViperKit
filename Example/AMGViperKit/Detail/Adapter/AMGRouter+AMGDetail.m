//
//  AMGRouter+AMGDetail.m
//  AMGViperText
//
//  Created by amglfk on 2017/12/5.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "AMGRouter+AMGDetail.h"
#import "AMGDetailBuilder.h"

@implementation AMGRouter (AMGDetail)

+ (UIViewController *)viewForDetailWithMsg:(NSString *)msg delegate:(id<AMGDetailViewControllerDelegate>)delegate {
    return [AMGDetailBuilder viewForDetailWithMsg:msg router:[self new] delegate:delegate];
}

@end
