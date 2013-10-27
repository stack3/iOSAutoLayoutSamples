//
//  STFillViewController.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2013/10/27.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STFillViewController.h"

@interface STFillViewController ()

@end

@implementation STFillViewController

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.title = @"Fill";
    }
    return self;
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

@end
