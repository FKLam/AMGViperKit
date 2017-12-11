//
//  AMGDetailViewController.m
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "AMGDetailViewController.h"
#import "AMGDetailViewControllerOutput.h"
#import "AMGDetailPresenterInput.h"

@interface AMGDetailViewController ()

@property (nonatomic, strong) UIButton *btn;
@property (nonatomic, strong) UITextView *textView;

@end

@implementation AMGDetailViewController

#pragma mark - LifeCycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.output configureModule];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    if ( [self.output respondsToSelector:@selector(handleViewDidAppear:)] ) {
        [self.output handleViewDidAppear:animated];
    }
}

#pragma mark - AMGDetailViewControllerInput

- (void)setupInitialState {
    [self setupUI];
    [self setupData];
}

- (void)setDetailMsg:(NSString *)msg {
    [self.btn setTitle:msg forState:UIControlStateNormal];
}

- (void)setTextViewMsg:(NSString *)msg {
    self.textView.text = msg;
}

#pragma mark - private methods

// 初始化界面
- (void)setupUI {
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 74, 100, 44)];
    [btn setTitle:@"btn" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor blackColor]];
    [btn addTarget:self action:@selector(saveData) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    self.btn = btn;
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(btn.frame) + 10, self.view.frame.size.width, 250)];
    [textView setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:textView];
    self.textView = textView;
}

// 初始化数据
- (void)setupData {
    
}

// 保存文档
- (void)saveData {
    [self.output saveTextViewText:self.textView.text];
}

- (void)dealloc {
    NSLog(@"%s", __func__);
}

@end
