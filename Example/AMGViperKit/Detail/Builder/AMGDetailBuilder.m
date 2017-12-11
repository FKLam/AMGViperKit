//
//  AMGDetailBuilder.m
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "AMGDetailBuilder.h"

#import "AMGDetailViewController.h"
#import "AMGDetailPresenter.h"
#import "AMGDetailInteractor.h"
#import "AMGDetailWireframe.h"
#import "NSObject+AMGViperAssembly.h"
#import "AMGDetailRouterInput.h"

@implementation AMGDetailBuilder

+ (UIViewController *)viewForDetailWithMsg:(NSString *)msg router:(id<AMGDetailRouterInput>)router delegate:(id<AMGDetailViewControllerDelegate>)delegate {
    AMGDetailViewController *view = [[AMGDetailViewController alloc] init];
    view.delegate = delegate;
    [self buildView:view msg:msg router:router];
    
    return view;
}

+ (void)buildView:(id<AMGViperView>)view msg:(NSString *)msg router:(id<AMGDetailRouterInput>)router {
    
    NSParameterAssert([view isKindOfClass:[AMGDetailViewController class]]);
    
    AMGDetailPresenter *presenter = [[AMGDetailPresenter alloc] init];
    AMGDetailInteractor *interactor = [[AMGDetailInteractor alloc] initWithMsg:msg];
    
    id<AMGViperWireframe> wireframe = (id)[[AMGDetailWireframe alloc] init];
    NSAssert([wireframe conformsToProtocol:@protocol(AMGViperWireframe)], nil);
    
    [self assembleViperForView:view presenter:presenter interactor:interactor wireframe:wireframe router:router];
}

@end
