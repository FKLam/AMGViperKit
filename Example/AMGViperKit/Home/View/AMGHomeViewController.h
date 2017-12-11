//
//  AMGHomeViewController.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AMGHomeViewControllerInput.h"

@protocol AMGHomeViewControllerOutput;
@protocol AMGHomePresenterInput;

@interface AMGHomeViewController : UIViewController<AMGHomeViewControllerInput>

@property (nonatomic, strong) id<AMGHomeViewControllerOutput, AMGHomePresenterInput> output;

@end
