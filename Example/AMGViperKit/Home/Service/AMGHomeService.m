//
//  AMGHomeService.m
//  AMGViperText
//
//  Created by amglfk on 2017/12/5.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "AMGHomeService.h"

@interface AMGHomeService ()

@property (nonatomic, copy) NSString *textViewMsg;

@end

@implementation AMGHomeService

+ (instancetype)sharedInstance {
    static AMGHomeService *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[AMGHomeService alloc] init];
    });
    return shared;
}

- (void)storageTextViewMsg:(NSString *)msg {
    _textViewMsg = msg;
}

- (NSString *)getTextViewMsg {
    return _textViewMsg;
}

@end
