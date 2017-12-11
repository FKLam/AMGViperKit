#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "AMGRouter.h"
#import "AMGViperInteractor.h"
#import "AMGViperKit.h"
#import "AMGViperPresenter.h"
#import "AMGViperRouter.h"
#import "AMGViperView.h"
#import "AMGViperWireframe.h"
#import "NSObject+AMGViperAssembly.h"
#import "UIApplication+AMGViperRouter.h"
#import "UIViewController+AMGViperRouter.h"

FOUNDATION_EXPORT double AMGViperKitVersionNumber;
FOUNDATION_EXPORT const unsigned char AMGViperKitVersionString[];

