//
//  AMGDetailInteractor.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AMGDetailInteractorInput.h"
#import "AMGViperInteractor.h"

@protocol AMGDetailInteractorOutput;

@interface AMGDetailInteractor : NSObject<AMGDetailInteractorInput, AMGViperInteractor>

- (instancetype)initWithMsg:(NSString *)msg;

@property (nonatomic, weak) id<AMGDetailInteractorOutput> output;

@end
