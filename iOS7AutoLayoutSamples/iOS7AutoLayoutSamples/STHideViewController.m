//
//  STHideViewController.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2013/10/27.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STHideViewController.h"

@interface STHideViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *label2TopConstraint;

@end

@implementation STHideViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"Hide";
    _label2.text = @"Label2\nLabel2\nLabel2";
}

- (IBAction)didTapToggleHideLabel2Button:(id)sender
{
    _label2.hidden = !_label2.hidden;
}

- (IBAction)didTapToggleHideLabel2WithConstraintButton:(id)sender
{
    _label2.hidden = !_label2.hidden;
    
    if (_label2.hidden) {
        _label2.text = nil;
        _label2TopConstraint.constant = 0;
    } else {
        _label2.text = @"Label2\nLabel2\nLabel2";
        _label2TopConstraint.constant = 8;
    }
}

- (IBAction)didTapToggleHideLabel2WithAnimationButton:(id)sender
{
    _label2.hidden = !_label2.hidden;
    
    [UIView animateWithDuration:0.3 animations:^{
        if (_label2.hidden) {
            _label2.text = nil;
            _label2TopConstraint.constant = 0;
        } else {
            _label2.text = @"Label2\nLabel2\nLabel2";
            _label2TopConstraint.constant = 8;
        }
        [self.view layoutIfNeeded];
    }];
}

@end
