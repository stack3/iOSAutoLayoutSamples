//
//  STLargeScrollContentView.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2014/02/19.
//  Copyright (c) 2014年 stack3. All rights reserved.
//

#import "STLargeScrollContentView.h"

@implementation STLargeScrollContentView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self largeScrollContentViewCommonInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self largeScrollContentViewCommonInit];
    }
    return self;
}

- (void)largeScrollContentViewCommonInit
{
    self.backgroundColor = [UIColor redColor];
}

- (CGSize)intrinsicContentSize
{
    return CGSizeMake(1024, 1024);
}

@end
