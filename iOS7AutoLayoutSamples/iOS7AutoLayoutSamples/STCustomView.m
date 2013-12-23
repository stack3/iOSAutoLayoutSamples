//
//  STCustomView.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2013/10/27.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STCustomView.h"

@implementation STCustomView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self customViewCommonInit];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self customViewCommonInit];
    }
    return self;
}

- (void)customViewCommonInit
{
    UIView *view = [[[NSBundle mainBundle] loadNibNamed:@"STCustomView" owner:self options:nil] objectAtIndex:0];
    view.frame = self.bounds;
    // Interface Builder already set these autoresizing mask. But set them just in case.
    view.translatesAutoresizingMaskIntoConstraints = YES;
    view.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    [self addSubview:view];
    
    _imageView.image = [UIImage imageNamed:@"stack3"];
    _titleLabel.text = @"Stack3";
}

@end
