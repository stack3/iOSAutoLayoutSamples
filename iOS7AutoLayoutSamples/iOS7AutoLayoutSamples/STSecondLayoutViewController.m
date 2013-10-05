//
//  STSecondLayoutViewController.m
//  AutoLayoutSamples
//
//  Created by EIMEI on 2013/10/03.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STSecondLayoutViewController.h"

@interface STSecondLayoutViewController ()

@end

@implementation STSecondLayoutViewController

- (id)init
{
    self = [super init];
    if (self) {
        self.title = @"Second Layout";
        self.edgesForExtendedLayout = UIRectEdgeNone;
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
