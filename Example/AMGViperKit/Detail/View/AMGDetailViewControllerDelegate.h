//
//  AMGDetailViewControllerDelegate.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/6.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol AMGDetailViewControllerDelegate <NSObject>

- (void)detail:(UIViewController *)detail didSaveText:(NSString *)text;

@end
