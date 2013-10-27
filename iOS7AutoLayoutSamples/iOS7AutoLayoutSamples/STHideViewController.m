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
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *label2HeightConstraint;

@end

@implementation STHideViewController

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.title = @"Hide";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)didTapToggleHideLabel2Button:(id)sender
{
    _label2.hidden = !_label2.hidden;
}

- (IBAction)didTapToggleHideLabel2WithConstraintButton:(id)sender
{
    _label2.hidden = !_label2.hidden;
    
    if (_label2.hidden) {
        _label2TopConstraint.constant = 0;
        _label2HeightConstraint.constant = 0;
    } else {
        _label2TopConstraint.constant = 8;
        _label2HeightConstraint.constant = 21;
    }
}

- (IBAction)didTapToggleHideLabel2WithAnimationButton:(id)sender
{
    _label2.hidden = !_label2.hidden;
    
    [UIView animateWithDuration:0.3 animations:^{
        if (_label2.hidden) {
            _label2TopConstraint.constant = 0;
            _label2HeightConstraint.constant = 0;
        } else {
            _label2TopConstraint.constant = 8;
            _label2HeightConstraint.constant = 21;
        }
        [self.view layoutIfNeeded];
    }];
}

@end
