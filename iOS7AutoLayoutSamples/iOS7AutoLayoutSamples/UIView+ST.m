//
//  UIViewController+ST.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2013/10/29.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "UIView+ST.h"

@implementation UIView (ST)

+ (instancetype)st_loadFromNib
{
    NSString *nibName = NSStringFromClass([self class]);
    UINib *nib = [UINib nibWithNibName:nibName bundle:nil];
    UIView *view = (UIView *)[[nib instantiateWithOwner:nil options:nil] objectAtIndex:0];
    [nib instantiateWithOwner:view options:nil];
    return view;
}

- (UIView *)st_loadAndAddContentViewFromNibNamed:(NSString *)nibNamed
{
    UIView *view = [[[NSBundle mainBundle] loadNibNamed:nibNamed owner:self options:nil] objectAtIndex:0];
    view.frame = self.bounds;
    view.translatesAutoresizingMaskIntoConstraints = YES;
    view.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    [self addSubview:view];
    return view;
}

@end
