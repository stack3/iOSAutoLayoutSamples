//
//  STLargeViewScrollViewController.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2014/02/19.
//  Copyright (c) 2014年 stack3. All rights reserved.
//

#import "STLargeViewScrollViewController.h"
#import "STLargeScrollContentView.h"

@interface STLargeViewScrollViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation STLargeViewScrollViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // The frame is temporary.
    STLargeScrollContentView *contentView = [[STLargeScrollContentView alloc] initWithFrame:self.view.bounds];
    contentView.translatesAutoresizingMaskIntoConstraints = NO;
    [_scrollView addSubview:contentView];
    
    [_scrollView addConstraint:[NSLayoutConstraint constraintWithItem:contentView
                                                            attribute:NSLayoutAttributeLeading
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:_scrollView
                                                            attribute:NSLayoutAttributeLeading
                                                           multiplier:1.0f
                                                             constant:0]];
    [_scrollView addConstraint:[NSLayoutConstraint constraintWithItem:contentView
                                                            attribute:NSLayoutAttributeTrailing
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:_scrollView
                                                            attribute:NSLayoutAttributeTrailing
                                                           multiplier:1.0f
                                                             constant:0]];
    [_scrollView addConstraint:[NSLayoutConstraint constraintWithItem:contentView
                                                            attribute:NSLayoutAttributeTop
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:_scrollView
                                                            attribute:NSLayoutAttributeTop
                                                           multiplier:1.0f
                                                             constant:0]];
    [_scrollView addConstraint:[NSLayoutConstraint constraintWithItem:contentView
                                                            attribute:NSLayoutAttributeBottom
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:_scrollView
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1.0f
                                                             constant:0]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
