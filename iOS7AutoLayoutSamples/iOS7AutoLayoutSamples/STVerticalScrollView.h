//
//  STVerticalScrollView.h
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2014/02/17.
//  Copyright (c) 2014年 stack3. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STVerticalScrollView : UIScrollView

@property (weak, nonatomic, readonly) UIView *scrollContentView;

- (void)addScrollContentView:(UIView *)view;

@end
