//
//  AMGDetailPresenterInput.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "AMGViperPresenter.h"

@protocol AMGDetailPresenterInput <AMGViperPresenter>

- (void)configureModule;

- (void)storeTextViewText:(NSString *)text;

@end
