//
//  AMGHomeWireframeInput.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/5.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AMGDetailViewControllerDelegate;

@protocol AMGHomeWireframeInput <NSObject>

- (void)pushDetailViewWithMsg:(NSString *)msg delegate:(id<AMGDetailViewControllerDelegate>)delegate;

@end
