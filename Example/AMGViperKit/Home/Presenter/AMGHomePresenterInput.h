//
//  AMGHomePresenterInput.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "AMGViperPresenter.h"

@protocol AMGHomePresenterInput <AMGViperPresenter>

- (void)configureModule;

- (void)storageTextViewMsg:(NSString *)msg;

@end
