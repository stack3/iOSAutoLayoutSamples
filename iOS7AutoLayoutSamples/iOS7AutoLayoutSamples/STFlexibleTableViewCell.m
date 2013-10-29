//
//  STFlexibleTableViewCell.m
//  iOS7AutoLayoutSamples
//
//  Created by MIYAMOTO, Hideaki on 2013/10/29.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STFlexibleTableViewCell.h"

@interface STFlexibleTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *label1;

@end

@implementation STFlexibleTableViewCell

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    return self;
}

- (id)awakeAfterUsingCoder:(NSCoder *)aDecoder
{
    NSLog(@"awakeAfterUsingCoder");
    self = [super awakeAfterUsingCoder:aDecoder];
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
}

@end
