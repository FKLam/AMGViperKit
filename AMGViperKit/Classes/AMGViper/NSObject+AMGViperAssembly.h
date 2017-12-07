//
//  NSObject+AMGViperAssembly.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AMGViperView, AMGViperPresenter, AMGViperInteractor, AMGViperWireframe, AMGViperRouter;

@interface NSObject (AMGViperAssembly)

+ (void)assembleViperForView:(id<AMGViperView>)view
                   presenter:(id<AMGViperPresenter>)presenter
                  interactor:(id<AMGViperInteractor>)interactor
                   wireframe:(id<AMGViperWireframe>)wireframe
                      router:(id<AMGViperRouter>)router;

@end
