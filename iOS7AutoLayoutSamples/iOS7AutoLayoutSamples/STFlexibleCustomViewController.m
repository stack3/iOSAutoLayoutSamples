//
//  STFlexibleCustomViewController.m
//  iOS7AutoLayoutSamples
//
//  Created by MIYAMOTO, Hideaki on 2013/10/29.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STFlexibleCustomViewController.h"
#import "STFlexibleCustomView.h"

@interface STFlexibleCustomViewController ()

@property (weak, nonatomic) IBOutlet STFlexibleCustomView *customView;

@end

@implementation STFlexibleCustomViewController


- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"Resize Custom View";
}

- (IBAction)didTapResize:(id)sender
{
    _customView.label1.text = @"Label1\nLabel1";
    _customView.label2.text = @"Label2\nLabel2\nLabel2";
    [self.view setNeedsLayout];
}

@end
