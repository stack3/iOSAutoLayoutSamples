//
//  STVerticalScrollContentView.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2014/02/17.
//  Copyright (c) 2014年 stack3. All rights reserved.
//

#import "STVerticalScrollContentView.h"
#import "UIView+ST.h"

@interface STVerticalScrollContentView ()

@property (weak, nonatomic) UIView *contentView;
@property (nonatomic) CGSize layoutSize;

@end

@implementation STVerticalScrollContentView

@synthesize imageView = _imageView;
@synthesize textLabel = _textLabel;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self verticalScrollContentViewCommonInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self verticalScrollContentViewCommonInit];
    }
    return self;
}

- (void)verticalScrollContentViewCommonInit
{
    _contentView = [self st_loadAndAddContentViewFromNibNamed:@"STVerticalScrollContentView"];
}

- (void)invalidateIntrinsicContentSize
{
    CGSize superviewSize = self.superview.bounds.size;
    _layoutSize.width = superviewSize.width;
    _textLabel.preferredMaxLayoutWidth = _layoutSize.width - 20*2;
    _layoutSize.height = [_contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    
    [super invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
    // DO NOT call systemLayoutSizeFittingSize here.
    
    return CGSizeMake(_layoutSize.width, _layoutSize.height);
}

@end
