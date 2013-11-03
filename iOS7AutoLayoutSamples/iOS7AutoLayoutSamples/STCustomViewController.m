//
//  STCustomViewController.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2013/10/27.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STCustomViewController.h"
#import "STCustomView.h"

@interface STCustomViewController ()

@property (weak, nonatomic) IBOutlet STCustomView *customView;

@end

@implementation STCustomViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"Custom View";
}

@end
