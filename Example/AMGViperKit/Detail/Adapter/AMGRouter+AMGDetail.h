//
//  AMGRouter+AMGDetail.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/5.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "AMGRouter.h"

@protocol AMGDetailViewControllerDelegate;

@interface AMGRouter (AMGDetail)

+ (UIViewController *)viewForDetailWithMsg:(NSString *)msg delegate:(id<AMGDetailViewControllerDelegate>)delegate;

@end
