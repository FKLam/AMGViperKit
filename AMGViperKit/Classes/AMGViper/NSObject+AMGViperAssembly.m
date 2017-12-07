//
//  NSObject+AMGViperAssembly.m
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "NSObject+AMGViperAssembly.h"
#import "AMGViperView.h"
#import "AMGViperPresenter.h"
#import "AMGViperInteractor.h"
#import "AMGViperWireframe.h"
#import "AMGViperRouter.h"

@implementation NSObject (AMGViperAssembly)

+ (void)assembleViperForView:(id<AMGViperView>)view
                   presenter:(id<AMGViperPresenter>)presenter
                  interactor:(id<AMGViperInteractor>)interactor
                   wireframe:(id<AMGViperWireframe>)wireframe
                      router:(id<AMGViperRouter>)router {
    NSParameterAssert([view conformsToProtocol:@protocol(AMGViperView)]);
    NSParameterAssert([presenter conformsToProtocol:@protocol(AMGViperPresenter)]);
    NSParameterAssert([interactor conformsToProtocol:@protocol(AMGViperInteractor)]);
    NSParameterAssert([wireframe conformsToProtocol:@protocol(AMGViperWireframe)]);
    NSCParameterAssert([router conformsToProtocol:@protocol(AMGViperRouter)]);
    
    NSAssert3(interactor.output == nil, @"Interactor (%@)'s outpu (%@) already exists when assemble viper for new output", interactor, interactor.output, presenter);
    
    interactor.output = presenter;
    
    NSAssert3(wireframe.view == nil, @"Wireframe (%@)'s view (%@) already exists when assemble viper for new view", wireframe, wireframe.view,view);
    wireframe.view = view;
    wireframe.router = router;
    
    NSAssert3(presenter.interactor == nil, @"Presenter (%@)'s interactor (%@) already exists when assemble viper for new interactor", presenter, presenter.interactor, interactor);
    NSAssert3(presenter.view == nil, @"Presenter (%@)'s view (%@) already exists when assemble viper for new view", presenter, presenter.view, view);
    NSAssert3(presenter.wireframe == nil, @"Presenter (%@)'s wireframe (%@) already exists when assemble viper for new router", presenter, presenter.wireframe, self);
    
    presenter.interactor = interactor;
    presenter.view = view;
    presenter.wireframe = wireframe;
    
    NSAssert3(view.output == nil, @"View (%@)'s ouput (%@) already exists when assemble viper for new oupt", view, view.output, presenter);
    view.output = presenter;
}

@end
