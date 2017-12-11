//
//  AMGHomeBuilder.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AMGViperView;
@protocol AMGHomeRouterInput;

@interface AMGHomeBuilder : NSObject

+ (void)buildView:(id<AMGViperView>)view router:(id<AMGHomeRouterInput>)router;

@end
