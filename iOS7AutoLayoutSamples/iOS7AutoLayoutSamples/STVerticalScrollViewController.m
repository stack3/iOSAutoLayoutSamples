//
//  STVerticalScrollViewController.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2014/02/17.
//  Copyright (c) 2014年 stack3. All rights reserved.
//

#import "STVerticalScrollViewController.h"
#import "STVerticalScrollContentView.h"
#import <MapKit/MapKit.h>

@interface STVerticalScrollViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) STVerticalScrollContentView *contentView;

@end

@implementation STVerticalScrollViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"Vertical ScrollView";

    // The Size is temporary. Auto Layout decides actual size.
    _contentView = [[STVerticalScrollContentView alloc] initWithFrame:self.scrollView.bounds];
    // Add Constraints manually below.
    _contentView.translatesAutoresizingMaskIntoConstraints = NO;
    [_scrollView addSubview:_contentView];
    //
    // Add Constraints after addSubview.
    // This is long code. You'd better to add a category method on UIScrollView.
    //
#if 1
    [_scrollView addConstraint:[NSLayoutConstraint constraintWithItem:_contentView
                                                            attribute:NSLayoutAttributeLeading
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:_scrollView
                                                            attribute:NSLayoutAttributeLeading
                                                           multiplier:1.0f
                                                             constant:0]];
    [_scrollView addConstraint:[NSLayoutConstraint constraintWithItem:_contentView
                                                            attribute:NSLayoutAttributeTrailing
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:_scrollView
                                                            attribute:NSLayoutAttributeTrailing
                                                           multiplier:1.0f
                                                             constant:0]];
    [_scrollView addConstraint:[NSLayoutConstraint constraintWithItem:_contentView
                                                            attribute:NSLayoutAttributeTop
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:_scrollView
                                                            attribute:NSLayoutAttributeTop
                                                           multiplier:1.0f
                                                             constant:0]];
    [_scrollView addConstraint:[NSLayoutConstraint constraintWithItem:_contentView
                                                            attribute:NSLayoutAttributeBottom
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:_scrollView
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1.0f
                                                             constant:0]];
#else
    //
    // If you want to use Visual Format Language.
    //
    NSDictionary *viewDict = NSDictionaryOfVariableBindings(_contentView);
    [_scrollView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_contentView]|"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewDict]];
    [_scrollView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_contentView]|"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewDict]];
#endif
 
    _contentView.imageView.image = [UIImage imageNamed:@"image-300"];    
    _contentView.textLabel.text = @"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.";
}

- (void)viewDidLayoutSubviews
{
    [_contentView setLayoutWidth:_scrollView.frame.size.width];
}

@end
