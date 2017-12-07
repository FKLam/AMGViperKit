//
//  AMGRouter.m
//  AMGViperText
//
//  Created by amglfk on 2017/12/5.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "AMGRouter.h"

@implementation AMGRouter

+ (void)pushViewController:(UIViewController *)destination fromViewController:(UIViewController *)source animated:(BOOL)animated {
    NSParameterAssert([destination isKindOfClass:[UIViewController class]]);
    NSParameterAssert(source.navigationController);
    [source.navigationController pushViewController:destination animated:animated];
}

+ (void)popViewController:(UIViewController *)viewController animated:(BOOL)animated {
    NSParameterAssert(viewController.navigationController);
    [viewController.navigationController popViewControllerAnimated:animated];
}

+ (void)presentViewController:(UIViewController *)viewControllerToPresent fromViewController:(UIViewController *)source animated:(BOOL)animated completion:(void (^ __nullable)(void))completion {
    NSParameterAssert(viewControllerToPresent);
    NSParameterAssert(source);
    [source presentViewController:viewControllerToPresent animated:animated completion:completion];
}

+ (void)dismissViewController:(UIViewController *)viewController animated:(BOOL)animated completion:(void (^ __nullable)(void))completion {
    NSParameterAssert(viewController);
    [viewController dismissViewControllerAnimated:animated completion:completion];
}

@end
