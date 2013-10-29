//
//  STCustomView.m
//  iOS7AutoLayoutSamples
//
//  Created by MIYAMOTO, Hideaki on 2013/10/27.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STCustomView.h"

@implementation STCustomView

- (void)awakeFromNib
{
    self.backgroundColor = [UIColor redColor];
}

- (CGSize)intrinsicContentSize
{
    return CGSizeMake(UIViewNoIntrinsicMetric, 100);
}

@end
