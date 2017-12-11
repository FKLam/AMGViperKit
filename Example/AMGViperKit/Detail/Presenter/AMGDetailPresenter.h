//
//  AMGDetailPresenter.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AMGDetailViewControllerOutput.h"
#import "AMGDetailInteractorOutput.h"
#import "AMGDetailPresenterInput.h"

@protocol AMGDetailViewControllerInput;
@protocol AMGDetailInteractorInput;
@protocol AMGDetailWireframeInput;
@protocol AMGDetailViewControllerProtocol;

@interface AMGDetailPresenter : NSObject<AMGDetailViewControllerOutput, AMGDetailInteractorOutput, AMGDetailPresenterInput>

@property (nonatomic, weak) id<AMGDetailViewControllerInput, AMGDetailViewControllerProtocol> view;
@property (nonatomic, strong) id<AMGDetailInteractorInput> interactor;
@property (nonatomic, strong) id<AMGDetailWireframeInput> wireframe;

@end
