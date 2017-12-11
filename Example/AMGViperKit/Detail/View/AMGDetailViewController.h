//
//  AMGDetailViewController.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AMGDetailViewControllerInput.h"
#import "AMGDetailViewControllerProtocol.h"

@protocol AMGDetailViewControllerOutput;
@protocol AMGDetailPresenterInput;
@protocol AMGDetailViewControllerDelegate;

@interface AMGDetailViewController : UIViewController<AMGDetailViewControllerInput, AMGDetailViewControllerProtocol>

@property (nonatomic, strong) id<AMGDetailViewControllerOutput, AMGDetailPresenterInput> output;

@property (nonatomic, weak) id<AMGDetailViewControllerDelegate> delegate;

@end
