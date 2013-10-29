//
//  STResizeCustomView.m
//  iOS7AutoLayoutSamples
//
//  Created by MIYAMOTO, Hideaki on 2013/10/29.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STResizeCustomView.h"

@implementation STResizeCustomView

- (id)awakeAfterUsingCoder:(NSCoder *)aDecoder
{
    if (self.subviews.count == 0) {
        UIView *oldSelf = self;
        self = [self.class st_loadFromNib];
        self.frame = oldSelf.frame;
    }
    return self;
}

- (void)awakeFromNib
{
    self.backgroundColor = [UIColor redColor];
}

- (CGSize)intrinsicContentSize
{
    return [self sizeThatFits:self.bounds.size];
}

- (CGSize)sizeThatFits:(CGSize)size
{
    CGSize label1Size = [_label1 sizeThatFits:size];
    CGSize label2Size = [_label2 sizeThatFits:size];
    return CGSizeMake(size.width, label1Size.height + label2Size.height + 8*3);
}

- (void)setLabelText1:(NSString *)text
{
}

- (void)setLabelText2:(NSString *)text
{
}

@end
