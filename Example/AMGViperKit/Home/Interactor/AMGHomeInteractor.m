//
//  AMGHomeInteractor.m
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "AMGHomeInteractor.h"
#import "AMGHomeService.h"
#import "AMGHomeInteractorOutput.h"

@interface AMGHomeInteractor ()

@property (nonatomic, copy) NSString *textViewMsg;

@end

@implementation AMGHomeInteractor

#pragma mark - AMGHomeInteractorInput

- (void)storageTextViewMsg:(NSString *)msg {
    _textViewMsg = msg;
    [[AMGHomeService sharedInstance] storageTextViewMsg:msg];
    
//    if ( [self.output respondsToSelector:@selector(getTextViewMsg:)] ) {
//        [self.output getTextViewMsg:_textViewMsg];
//    }
}

- (void)fetchTextViewMsg {
    NSString *msg = _textViewMsg;
    if ( [self.output respondsToSelector:@selector(getTextViewMsg:)] ) {
        [self.output getTextViewMsg:msg];
    }
}

@end
