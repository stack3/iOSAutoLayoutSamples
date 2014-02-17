//
//  STVerticalScrollViewController.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2014/02/17.
//  Copyright (c) 2014年 stack3. All rights reserved.
//

#import "STVerticalScrollViewController.h"
#import "STVerticalScrollView.h"
#import "STVerticalScrollContentView.h"

@interface STVerticalScrollViewController ()

@property (weak, nonatomic) IBOutlet STVerticalScrollView *scrollView;

@end

@implementation STVerticalScrollViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"Vertical ScrollView";
    
    STVerticalScrollContentView *contentView = [[STVerticalScrollContentView alloc] initWithFrame:self.view.bounds];
    [_scrollView addScrollContentView:contentView];
    
    NSMutableString *string = [[NSMutableString alloc] initWithCapacity:1000];
    for (int i = 0; i < 10; i++) {
        [string appendString:@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."];
    }
    contentView.textLabel.text = string;
}

@end
