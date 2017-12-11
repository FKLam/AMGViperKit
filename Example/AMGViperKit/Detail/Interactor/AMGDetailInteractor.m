//
//  AMGDetailInteractor.m
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "AMGDetailInteractor.h"
#import "AMGDetailService.h"
#import "AMGDetailPresenter.h"

@interface AMGDetailInteractor ()

@property (nonatomic, copy) NSString *msg;
@property (nonatomic, copy) NSString *textViewText;

@end

@implementation AMGDetailInteractor

- (instancetype)initWithMsg:(NSString *)msg {
    self = [super init];
    if ( self ) {
        _msg = msg;
    }
    return self;
}

#pragma mark - AMGDetailInteractorInput

- (void)getDetailMsg {
    [self.output detailMsg:_msg];
}

- (void)storageTextViewText:(NSString *)text {
    _textViewText = text;
    
}

@end
