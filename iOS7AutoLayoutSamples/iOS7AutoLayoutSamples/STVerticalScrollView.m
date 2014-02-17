//
//  STVerticalScrollView.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2014/02/17.
//  Copyright (c) 2014年 stack3. All rights reserved.
//

#import "STVerticalScrollView.h"

@interface STVerticalScrollView ()

@property (strong, nonatomic) NSLayoutConstraint *contentWidthConstraint;
@property (strong, nonatomic) NSLayoutConstraint *contentTopConstraint;
@property (strong, nonatomic) NSLayoutConstraint *contentLeadingConstraint;
@property (strong, nonatomic) NSLayoutConstraint *contentBottomConstraint;

@end

@implementation STVerticalScrollView

- (void)addScrollContentView:(UIView *)view
{
    if (_scrollContentView) {
        [self removeConstraint:_contentWidthConstraint];
        [self removeConstraint:_contentTopConstraint];
        [self removeConstraint:_contentLeadingConstraint];
        [self removeConstraint:_contentBottomConstraint];
        [_scrollContentView removeFromSuperview];
    }
    
    _scrollContentView = view;
    _scrollContentView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:_scrollContentView];

    CGSize contentSize = self.bounds.size;
    _contentWidthConstraint = [NSLayoutConstraint constraintWithItem:_scrollContentView
                                                           attribute:NSLayoutAttributeWidth
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:nil
                                                           attribute:NSLayoutAttributeNotAnAttribute
                                                          multiplier:1.0f
                                                            constant:contentSize.width];
    [self addConstraint:_contentWidthConstraint];
    
    _contentTopConstraint = [NSLayoutConstraint constraintWithItem:_scrollContentView
                                                           attribute:NSLayoutAttributeTop
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:self
                                                           attribute:NSLayoutAttributeTop
                                                          multiplier:1.0f
                                                            constant:0];
    [self addConstraint:_contentTopConstraint];

    _contentLeadingConstraint = [NSLayoutConstraint constraintWithItem:_scrollContentView
                                                         attribute:NSLayoutAttributeLeading
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self
                                                         attribute:NSLayoutAttributeLeading
                                                        multiplier:1.0f
                                                          constant:0];
    [self addConstraint:_contentLeadingConstraint];

    _contentBottomConstraint = [NSLayoutConstraint constraintWithItem:_scrollContentView
                                                             attribute:NSLayoutAttributeBottom
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:self
                                                             attribute:NSLayoutAttributeBottom
                                                            multiplier:1.0f
                                                              constant:0];
    [self addConstraint:_contentBottomConstraint];
}

- (void)layoutSubviews
{
    _contentWidthConstraint.constant = self.bounds.size.width;
    
    [super layoutSubviews];
}

@end
