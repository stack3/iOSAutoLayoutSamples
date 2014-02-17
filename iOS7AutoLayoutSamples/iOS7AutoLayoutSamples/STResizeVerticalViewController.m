//
//  STResizeVerticalViewController.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2013/10/13.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STResizeVerticalViewController.h"

@interface STResizeVerticalViewController () <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation STResizeVerticalViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"Resize Vertical";
    
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CellId"];
    _tableView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"CellId"];
    cell.textLabel.text = [NSString stringWithFormat:@"Row %ld", indexPath.row + 1];
    return cell;
}

@end
