//
//  STFlexibleCustomView.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2013/10/29.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STFlexibleCustomView.h"

@interface STFlexibleCustomView ()

@property (strong, nonatomic) UIView *contentView;

@end

@implementation STFlexibleCustomView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self flexibleCustomViewCommonInit];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self flexibleCustomViewCommonInit];
    }
    return self;
}

- (void)flexibleCustomViewCommonInit
{
    _contentView = [[[NSBundle mainBundle] loadNibNamed:@"STFlexibleCustomView" owner:self options:nil] objectAtIndex:0];
    _contentView.backgroundColor = [UIColor clearColor];
    _contentView.frame = self.bounds;
    // Interface Builder already set these autoresizing mask. But set them just in case.
    _contentView.translatesAutoresizingMaskIntoConstraints = YES;
    _contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    [self addSubview:_contentView];
    
    self.backgroundColor = [UIColor grayColor];
    _label1.backgroundColor = [UIColor redColor];
    _label2.backgroundColor = [UIColor blueColor];
}

- (void)layoutSubviews
{
    /*
    CGRect bounds = self.bounds;
    _label1.preferredMaxLayoutWidth = bounds.size.width - 20*2;
    _label2.preferredMaxLayoutWidth = bounds.size.width - 20*2;
     */
    [super layoutSubviews];
}

@end
