//
//  AMGHomeBuilder.m
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "AMGHomeBuilder.h"

#import "AMGHomeViewController.h"
#import "AMGHomePresenter.h"
#import "AMGHomeInteractor.h"
#import "AMGHomeWireframe.h"
#import "NSObject+AMGViperAssembly.h"
#import "AMGHomeRouterInput.h"

@implementation AMGHomeBuilder

+ (void)buildView:(id<AMGViperView>)view router:(id<AMGHomeRouterInput>)router {
    
    NSParameterAssert([view isKindOfClass:[AMGHomeViewController class]]);
    
    AMGHomePresenter *presenter = [[AMGHomePresenter alloc] init];
    AMGHomeInteractor *interactor = [[AMGHomeInteractor alloc] init];
    
    id<AMGViperWireframe> wireframe = (id)[[AMGHomeWireframe alloc] init];
    NSAssert([wireframe conformsToProtocol:@protocol(AMGViperWireframe)], nil);
    
    [self assembleViperForView:view presenter:presenter interactor:interactor wireframe:wireframe router:router];
}

@end
