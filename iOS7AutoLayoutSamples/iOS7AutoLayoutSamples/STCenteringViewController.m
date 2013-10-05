//
//  STCenteringViewController.m
//  AutoLayoutSamples
//
//  Created by EIMEI on 2013/09/28.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STCenteringViewController.h"

@implementation STCenteringViewController

- (id)init
{
    self = [super init];
    if (self) {
        self.title = @"Centering";
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
}

@end
