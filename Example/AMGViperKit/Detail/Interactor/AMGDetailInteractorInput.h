//
//  AMGDetailInteractorInput.h
//  AMGViperText
//
//  Created by amglfk on 2017/12/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AMGDetailInteractorInput <NSObject>

- (void)getDetailMsg;

- (void)storageTextViewText:(NSString *)text;

@end
