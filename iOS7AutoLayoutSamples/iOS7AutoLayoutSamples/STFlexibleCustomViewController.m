//
//  STFlexibleCustomViewController.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2013/10/29.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STFlexibleCustomViewController.h"
#import "STFlexibleCustomView.h"

@interface STFlexibleCustomViewController ()

@property (weak, nonatomic) IBOutlet STFlexibleCustomView *customView;

@end

@implementation STFlexibleCustomViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"Flexible Custom View";
}

- (IBAction)didTapResize:(id)sender
{
    _customView.label1.text = @"12345678901234567890123456789012345678901234567890";
    _customView.label2.text = @"1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890";
    // Not necessary. Just in case.
    [self.view setNeedsLayout];
}

@end
