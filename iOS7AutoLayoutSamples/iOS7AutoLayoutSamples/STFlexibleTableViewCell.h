//
//  STFlexibleTableViewCell.h
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2013/10/29.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STFlexibleTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;

- (void)setLabelTextsWithIndexPath:(NSIndexPath *)indexPath;

@end
