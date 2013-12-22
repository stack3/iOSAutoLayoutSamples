//
//  STFlexibleTableViewCellViewController.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2013/10/29.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STFlexibleTableViewCellViewController.h"
#import "STFlexibleTableViewCell.h"

#define _STCellId @"Cell"
#define _STCellForHeightId @"CellForHeight"

@interface STFlexibleTableViewCellViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) STFlexibleTableViewCell *cellForHeight;

@end

@implementation STFlexibleTableViewCellViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Flexible TableViewCell";

    UINib *nib = [UINib nibWithNibName:@"STFlexibleTableViewCell" bundle:nil];
    [_tableView registerNib:nib forCellReuseIdentifier:_STCellId];
    [_tableView registerNib:nib forCellReuseIdentifier:_STCellForHeightId];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    _cellForHeight = [_tableView dequeueReusableCellWithIdentifier:_STCellForHeightId];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    STFlexibleTableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:_STCellId forIndexPath:indexPath];
    [cell setLabelTextsWithIndexPath:indexPath];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    _cellForHeight.frame = _tableView.bounds;
    
    // This also work.
    // _cellForHeight.frame = CGRectMake(0, 0, _tableView.bounds.size.width, 0);
    
    [_cellForHeight setLabelTextsWithIndexPath:indexPath];
    
    [_cellForHeight.contentView setNeedsLayout];
    [_cellForHeight.contentView layoutIfNeeded];
    CGSize size = [_cellForHeight.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    return size.height;
}

@end
