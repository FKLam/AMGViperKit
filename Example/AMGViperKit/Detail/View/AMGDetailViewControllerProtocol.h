//
//  AMGDetailViewControllerProtocol.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/6.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AMGDetailViewControllerDelegate;

@protocol AMGDetailViewControllerProtocol <NSObject>

@property (nonatomic, weak) id<AMGDetailViewControllerDelegate> delegate;

@end
