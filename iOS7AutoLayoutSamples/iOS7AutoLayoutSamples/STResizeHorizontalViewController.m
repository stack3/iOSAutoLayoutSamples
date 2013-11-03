//
//  STResizeTextFieldViewController.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2013/10/12.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STResizeHorizontalViewController.h"

@interface STResizeHorizontalViewController ()

@property (strong, nonatomic) IBOutlet UITextField *searchTextField;
@property (strong, nonatomic) IBOutlet UIButton *searchButton;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UIButton *longTextButton;

@end

@implementation STResizeHorizontalViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Resize Horizontal";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)didTapLongTextButton:(id)sender
{
    [_searchButton setTitle:@"Looong Text" forState:UIControlStateNormal];
    _nameLabel.text = @"Looong Text";
}

@end
