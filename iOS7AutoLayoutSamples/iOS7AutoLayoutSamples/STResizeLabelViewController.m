//
//  STResizeLabelViewController.m
//  AutoLayoutSamples
//
//  Created by EIMEI on 2013/09/28.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STResizeLabelViewController.h"

@interface STResizeLabelViewController ()

@property (strong, nonatomic) IBOutlet UILabel *label1;
@property (strong, nonatomic) IBOutlet UIButton *longTextButton1;
@property (strong, nonatomic) IBOutlet UILabel *label2;
@property (strong, nonatomic) IBOutlet UIButton *longTextButton2;

@end

@implementation STResizeLabelViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"Resize Label";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Button

- (IBAction)didTapLongTextButton1:(id)sender
{
    _label1.text = @"Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooon Text";
}

- (IBAction)didTapLongTextButton2:(id)sender
{
    _label2.text = @"Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooon Text";
}

@end
