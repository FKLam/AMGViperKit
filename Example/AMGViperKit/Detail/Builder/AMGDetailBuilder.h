//
//  AMGHomeBuilder.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AMGViperView;
@protocol AMGDetailRouterInput;
@protocol AMGDetailViewControllerDelegate;

@interface AMGDetailBuilder : NSObject

+ (UIViewController *)viewForDetailWithMsg:(NSString *)msg router:(id<AMGDetailRouterInput>)router delegate:(id<AMGDetailViewControllerDelegate>)delegate;

@end
