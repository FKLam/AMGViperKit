//
//  AMGHomeWireframe.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/5.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AMGViperWireframe.h"
#import "AMGHomeWireframeInput.h"

NS_ASSUME_NONNULL_BEGIN

@protocol AMGHomeViewControllerInput;
@protocol AMGHomeRouterInput;

@interface AMGHomeWireframe : NSObject<AMGViperWireframe, AMGHomeWireframeInput>

@property (nonatomic, weak) id<AMGHomeViewControllerInput> view;
@property (nonatomic, strong) id<AMGHomeRouterInput> router;

@end

NS_ASSUME_NONNULL_END
