//
//  AMGDetailViewControllerInput.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "AMGViperView.h"

typedef void(^AMGDetailViewDataResultBlock)(NSString *data);

@protocol AMGDetailViewControllerInput <AMGViperView>

- (void)setupInitialState;

- (void)setDetailMsg:(NSString *)msg;

- (void)setTextViewMsg:(NSString *)msg;

@end
