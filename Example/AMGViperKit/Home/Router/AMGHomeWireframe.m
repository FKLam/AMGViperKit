//
//  AMGHomeWireframe.m
//  AMGViperText
//
//  Created by amglfk on 2017/12/5.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "AMGHomeWireframe.h"
#import "AMGHomeRouterInput.h"
#import "AMGRouter+AMGDetail.h"

@implementation AMGHomeWireframe

- (void)pushDetailViewWithMsg:(NSString *)msg delegate:(id<AMGDetailViewControllerDelegate>)delegate {
    UIViewController *detailViewController = [[self.router class] viewForDetailWithMsg:msg delegate:delegate];
    [[self.router class] pushViewController:detailViewController fromViewController:(UIViewController *)self.view animated:YES];
    [self resetState];
}

- (void)resetState {
    
}

@end
