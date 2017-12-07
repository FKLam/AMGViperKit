//
//  AMGViperRouter.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AMGViperView;
@protocol AMGViperPresenter;
@protocol AMGViperInteractor;

@protocol AMGViperRouter <NSObject>

+ (void)pushViewController:(UIViewController *)destination fromViewController:(UIViewController *)source animated:(BOOL)animated;
+ (void)popViewController:(UIViewController *)viewController animated:(BOOL)animated;
+ (void)presentViewController:(UIViewController *)viewControllerToPresent fromViewController:(UIViewController *)source animated:(BOOL)animated completion:(void (^ __nullable)(void))completion;
+ (void)dismissViewController:(UIViewController *)viewController animated:(BOOL)animated completion:(void (^ __nullable)(void))completion;

@end

NS_ASSUME_NONNULL_END
