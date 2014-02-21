//
//  STLargeImageScrollViewController.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2014/02/19.
//  Copyright (c) 2014年 stack3. All rights reserved.
//

#import "STLargeImageScrollViewController.h"

@interface STLargeImageScrollViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation STLargeImageScrollViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"Large Image ScrollView";
    
    UIImage *image = [UIImage imageNamed:@"large-image-01"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.backgroundColor = [UIColor redColor];
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    NSLog(@"ImageView intrinsicContentSize:%@", NSStringFromCGSize(imageView.intrinsicContentSize));
    [_scrollView addSubview:imageView];
    
#if 1
    NSDictionary *viewDictionary = NSDictionaryOfVariableBindings(imageView);
    [_scrollView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[imageView]|"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewDictionary]];
    [_scrollView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[imageView]|"
                                                                        options:0
                                                                        metrics:nil
                                                                          views:viewDictionary]];
#else
    [_scrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageView
                                                            attribute:NSLayoutAttributeLeading
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:_scrollView
                                                            attribute:NSLayoutAttributeLeading
                                                           multiplier:1.0f
                                                             constant:0]];
    [_scrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageView
                                                            attribute:NSLayoutAttributeTrailing
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:_scrollView
                                                            attribute:NSLayoutAttributeTrailing
                                                           multiplier:1.0f
                                                             constant:0]];
    [_scrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageView
                                                            attribute:NSLayoutAttributeTop
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:_scrollView
                                                            attribute:NSLayoutAttributeTop
                                                           multiplier:1.0f
                                                             constant:0]];
    [_scrollView addConstraint:[NSLayoutConstraint constraintWithItem:imageView
                                                            attribute:NSLayoutAttributeBottom
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:_scrollView
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1.0f
                                                             constant:0]];
#endif
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
