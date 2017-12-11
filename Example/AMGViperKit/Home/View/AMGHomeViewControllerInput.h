//
//  AMGHomeViewControllerInput.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "AMGViperView.h"

typedef void(^AMGHomeViewDataResultBlock)(NSString *data);

@protocol AMGHomeViewControllerInput <AMGViperView>

- (void)setupInitialState;

- (void)setTextViewWithMsg:(NSString *)msg;

- (void)getDataWithResultBlock:(AMGHomeViewDataResultBlock)resultBlock;

@end
