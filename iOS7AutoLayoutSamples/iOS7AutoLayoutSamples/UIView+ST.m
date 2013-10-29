//
//  UIViewController+ST.m
//  iOS7AutoLayoutSamples
//
//  Created by MIYAMOTO, Hideaki on 2013/10/29.
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

@end
