//
//  AMGDetailPresenter.m
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "AMGDetailPresenter.h"

#import "AMGDetailViewControllerInput.h"
#import "AMGDetailInteractorInput.h"
#import "AMGDetailRouterInput.h"
#import "AMGDetailWireframeInput.h"

#import "AMGDetailViewControllerDelegate.h"
#import "AMGDetailViewControllerProtocol.h"

@implementation AMGDetailPresenter

#pragma mark - AMGDetailPresenterInput

- (void)configureModule {
    [self.view setupInitialState];
    
    [self.interactor getDetailMsg];
}

- (void)storeTextViewText:(NSString *)text {
    [self.interactor storageTextViewText:text];
}

#pragma mark - AMGViperPresenter


#pragma mark - AMGDetailViewControllerOutput

- (void)didTriggerViewReadyEvent {
    
}

- (void)saveTextViewText:(NSString *)text {
    [self.interactor storageTextViewText:text];
    
    id<AMGDetailViewControllerDelegate> delegate = self.view.delegate;
    if ( [delegate respondsToSelector:@selector(detail:didSaveText:)] ) {
        [delegate detail:(UIViewController *)self.view didSaveText:text];
    }
}

#pragma mark - AMGDetailInteractorOutput

- (void)detailMsg:(NSString *)msg {
    [self.view setDetailMsg:msg];
    [self.view setTextViewMsg:msg];
}

@end
