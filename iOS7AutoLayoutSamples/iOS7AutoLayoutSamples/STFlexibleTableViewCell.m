//
//  STFlexibleTableViewCell.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2013/10/29.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STFlexibleTableViewCell.h"

@implementation STFlexibleTableViewCell

- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    
    _label1.preferredMaxLayoutWidth = frame.size.width - 20*2;
    _label2.preferredMaxLayoutWidth = frame.size.width - 20*2;
    _label3.preferredMaxLayoutWidth = frame.size.width - 20*2;
    [self setNeedsLayout];
}

- (void)setLabelTextsWithIndexPath:(NSIndexPath *)indexPath
{
    NSMutableString *string = [[NSMutableString alloc] initWithCapacity:100];
    for (NSUInteger i = 0; i < indexPath.row + 1; i++) {
        [string appendFormat:@"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"];
    }
    
    _label1.text = string;
    _label2.text = string;
    _label3.text = string;
    [self setNeedsLayout];
}

@end
