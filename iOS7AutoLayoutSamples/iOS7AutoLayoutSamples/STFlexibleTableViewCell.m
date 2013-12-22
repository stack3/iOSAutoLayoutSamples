//
//  STFlexibleTableViewCell.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2013/10/29.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STFlexibleTableViewCell.h"

@implementation STFlexibleTableViewCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];

    // Labels is not connected yet.
    if (_label1 == nil) return;
    
    CGRect bounds = self.bounds;
    _label1.preferredMaxLayoutWidth = bounds.size.width - 20*2;
    _label2.preferredMaxLayoutWidth = bounds.size.width - 20*2;
    _label3.preferredMaxLayoutWidth = bounds.size.width - 20*2;
}

- (void)setLabelTextsWithIndexPath:(NSIndexPath *)indexPath
{
    NSMutableString *string = [[NSMutableString alloc] initWithCapacity:100];
    for (NSUInteger i = 0; i < indexPath.row + 1; i++) {
        [string appendFormat:@"12345678901234567890123456789012345678901234567890"];
    }
    
    _label1.text = string;
    _label2.text = string;
    _label3.text = string;
}

@end
