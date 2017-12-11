//
//  AMGHomeService.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/5.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AMGHomeService : NSObject

+ (instancetype)sharedInstance;

- (void)storageTextViewMsg:(NSString *)msg;

- (NSString *)getTextViewMsg;

@end
