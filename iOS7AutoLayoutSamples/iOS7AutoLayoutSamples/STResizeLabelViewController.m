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

- (id)init
{
    self = [super init];
    if (self) {
        self.title = @"Resize Label";
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [_longTextButton1 addTarget:self action:@selector(didTapLongTextButton1) forControlEvents:UIControlEventTouchUpInside];
    [_longTextButton2 addTarget:self action:@selector(didTapLongTextButton2) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Button

- (void)didTapLongTextButton1
{
    _label1.text = @"Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooon Text";
}

- (void)didTapLongTextButton2
{
    _label2.text = @"Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooon Text";
}

@end
