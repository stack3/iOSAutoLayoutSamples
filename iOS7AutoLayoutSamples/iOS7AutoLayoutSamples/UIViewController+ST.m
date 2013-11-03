//
//  UIViewController+ST.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2013/10/29.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "UIViewController+ST.h"

@implementation UIViewController (ST)

+ (instancetype)st_loadFromNib
{
    NSString *nibName = NSStringFromClass([self class]);
    UINib *nib = [UINib nibWithNibName:nibName bundle:nil];
    UIViewController *con = [[nib instantiateWithOwner:nil options:nil] objectAtIndex:0];
    
    return con;
}

@end
