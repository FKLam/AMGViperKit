//
//  AMGHomeViewControllerOutput.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AMGHomeViewControllerOutput <NSObject>

- (void)didTriggerViewReadyEvent;

- (void)sendDataButtonClicked;

@end
