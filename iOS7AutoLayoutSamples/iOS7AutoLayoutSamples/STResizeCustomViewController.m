//
//  STResizeCustomViewController.m
//  iOS7AutoLayoutSamples
//
//  Created by MIYAMOTO, Hideaki on 2013/10/29.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STResizeCustomViewController.h"
#import "STResizeCustomView.h"

@interface STResizeCustomViewController ()

@property (weak, nonatomic) IBOutlet STResizeCustomView *customView;

@end

@implementation STResizeCustomViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.title = @"Resize Custom View";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapResize:(id)sender
{
    CGRect customViewFrame = _customView.frame;
    _customView.label1.text = @"Label1\nLabel1";
    _customView.label2.text = @"Label2\nLabel2\nLabel2";
     [self.view setNeedsLayout];
}

@end
