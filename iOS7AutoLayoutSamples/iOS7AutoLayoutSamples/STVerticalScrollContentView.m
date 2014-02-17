//
//  STVerticalScrollContentView.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2014/02/17.
//  Copyright (c) 2014年 stack3. All rights reserved.
//

#import "STVerticalScrollContentView.h"
#import "UIView+ST.h"

@implementation STVerticalScrollContentView

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
    [self st_loadAndAddContentViewFromNibNamed:@"STVerticalScrollContentView"];
}

- (void)layoutSubviews
{
    _textLabel.preferredMaxLayoutWidth = self.bounds.size.width - 20*2;
    
    [super layoutSubviews];
}

@end
