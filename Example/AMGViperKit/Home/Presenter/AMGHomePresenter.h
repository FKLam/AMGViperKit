//
//  AMGHomePresenter.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AMGHomeViewControllerOutput.h"
#import "AMGHomeInteractorOutput.h"
#import "AMGHomePresenterInput.h"

@protocol AMGHomeViewControllerInput;
@protocol AMGHomeInteractorInput;
@protocol AMGHomeWireframeInput;

@interface AMGHomePresenter : NSObject<AMGHomeViewControllerOutput, AMGHomeInteractorOutput, AMGHomePresenterInput>

@property (nonatomic, weak) id<AMGHomeViewControllerInput> view;
@property (nonatomic, strong) id<AMGHomeInteractorInput> interactor;
@property (nonatomic, strong) id<AMGHomeWireframeInput> wireframe;

@end
