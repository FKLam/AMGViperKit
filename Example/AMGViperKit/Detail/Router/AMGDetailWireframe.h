//
//  AMGDetailWireframe.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/5.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AMGViperWireframe.h"
#import "AMGDetailWireframeInput.h"

NS_ASSUME_NONNULL_BEGIN

@protocol AMGDetailViewControllerInput;
@protocol AMGDetailRouterInput;

@interface AMGDetailWireframe : NSObject<AMGViperWireframe, AMGDetailWireframeInput>

@property (nonatomic, weak) id<AMGDetailViewControllerInput> view;
@property (nonatomic, strong) id<AMGDetailRouterInput> router;

@end

NS_ASSUME_NONNULL_END
