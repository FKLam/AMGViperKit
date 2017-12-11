//
//  AMGHomePresenter.m
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "AMGHomePresenter.h"

#import "AMGHomeViewControllerInput.h"
#import "AMGHomeInteractorInput.h"
#import "AMGHomeRouterInput.h"
#import "AMGHomeWireframeInput.h"

#import "AMGDetailViewControllerDelegate.h"

@interface AMGHomePresenter ()<AMGDetailViewControllerDelegate>

@end

@implementation AMGHomePresenter

#pragma mark - AMGHomePresenterInput

- (void)configureModule {
    [self.view setupInitialState];
}

- (void)storageTextViewMsg:(NSString *)msg {
    [self.interactor storageTextViewMsg:msg];
}

#pragma mark - AMGViperPresenter

- (void)handleViewDidAppear:(BOOL)animated {
    
    [self.interactor fetchTextViewMsg];
    
}

#pragma mark - AMGHomeViewControllerOutput

- (void)didTriggerViewReadyEvent {
    
}

- (void)sendDataButtonClicked {
    __weak typeof(self) weakSelf = self;
    [self.view getDataWithResultBlock:^(NSString *data) {
        [weakSelf.interactor storageTextViewMsg:data];
        [weakSelf.wireframe pushDetailViewWithMsg:data delegate:weakSelf];
    }];
}

#pragma mark - AMGHomeInteractorOutput

- (void)getTextViewMsg:(NSString *)msg {
    [self.view setTextViewWithMsg:msg];
}

#pragma mark - AMGDetailViewControllerDelegate

- (void)detail:(UIViewController *)detail didSaveText:(NSString *)text {
    [self.view setTextViewWithMsg:text];
}

@end
