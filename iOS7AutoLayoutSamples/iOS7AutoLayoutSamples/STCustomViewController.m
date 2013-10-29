//
//  STCustomViewController.m
//  iOS7AutoLayoutSamples
//
//  Created by MIYAMOTO, Hideaki on 2013/10/27.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STCustomViewController.h"
#import "STCustomView.h"

@interface STCustomViewController ()

@property (weak, nonatomic) IBOutlet STCustomView *customView;

@end

@implementation STCustomViewController

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.title = @"Custom View";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

@end
