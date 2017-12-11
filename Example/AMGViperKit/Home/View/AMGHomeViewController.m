//
//  AMGHomeViewController.m
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "AMGHomeViewController.h"
#import "AMGHomeViewControllerOutput.h"
#import "AMGHomePresenterInput.h"

@interface AMGHomeViewController ()

@property (nonatomic, strong) UITextView *textView;

@end

@implementation AMGHomeViewController

#pragma mark - LifeCycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.output configureModule];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
//    if ( [self.output respondsToSelector:@selector(handleViewDidAppear:)] ) {
//        [self.output handleViewDidAppear:animated];
//    }
}

#pragma mark - AMGHomeViewControllerInput

- (void)setupInitialState {
    [self setupUI];
    [self setupData];
}

- (void)setTextViewWithMsg:(NSString *)msg {
    self.textView.text = msg;
}

- (void)getDataWithResultBlock:(AMGHomeViewDataResultBlock)resultBlock {
    if ( resultBlock ) {
        NSString *msg = self.textView.text;
        resultBlock( msg );
    }
}

#pragma mark - private methods

// 初始化界面
- (void)setupUI {
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 74, 50, 44)];
    [btn setTitle:@"btn" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor orangeColor]];
    [btn addTarget:self action:@selector(clickedBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(btn.frame) + 10, self.view.frame.size.width, 250)];
    [textView setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:textView];
    self.textView = textView;
}

// 初始化数据
- (void)setupData {
    
}

// 点击按钮的方法
- (void)clickedBtn {
    [self.output sendDataButtonClicked];
}

@end
