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
    _height = 150;
}

- (CGSize)intrinsicContentSize
{
    return CGSizeMake(300, _height);
}

@end
