//
//  AMGHomeInteractor.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AMGHomeInteractorInput.h"
#import "AMGViperInteractor.h"

@protocol AMGHomePresenterInput;
@protocol AMGHomeInteractorOutput;

@interface AMGHomeInteractor : NSObject<AMGHomeInteractorInput, AMGViperInteractor>

@property (nonatomic, weak) id<AMGHomePresenterInput, AMGHomeInteractorOutput> output;

@end
