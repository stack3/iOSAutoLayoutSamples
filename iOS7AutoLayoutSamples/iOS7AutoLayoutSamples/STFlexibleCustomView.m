//
//  STFlexibleCustomView.m
//  iOS7AutoLayoutSamples
//
//  Created by MIYAMOTO, Hideaki on 2013/10/29.
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
        _contentView = [[[NSBundle mainBundle] loadNibNamed:@"STFlexibleCustomView" owner:self options:nil] objectAtIndex:0];
        _contentView.backgroundColor = [UIColor clearColor];
        _contentView.frame = self.bounds;
        // Interface Builder already set these autoresizing mask. But set them just in case.
        _contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
        [self addSubview:_contentView];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.backgroundColor = [UIColor grayColor];
    _label1.backgroundColor = [UIColor redColor];
    _label2.backgroundColor = [UIColor blueColor];
}

/* Not needed.
- (CGSize)intrinsicContentSize
{
    CGSize size = CGSizeMake(self.bounds.size.width, 10000);
    
    size = [self sizeThatFits:size];
    return size;
}

- (CGSize)sizeThatFits:(CGSize)size
{
    CGSize label1Size = [_label1 sizeThatFits:size];
    CGSize label2Size = [_label2 sizeThatFits:size];
    return CGSizeMake(size.width, label1Size.height + label2Size.height + 20*2 + 8);
}
*/

@end
