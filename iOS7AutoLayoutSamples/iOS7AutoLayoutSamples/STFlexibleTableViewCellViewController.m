//
//  STFlexibleTableViewCellViewController.m
//  iOS7AutoLayoutSamples
//
//  Created by EIMEI on 2013/10/29.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STFlexibleTableViewCellViewController.h"

@interface STFlexibleTableViewCellViewController () <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation STFlexibleTableViewCellViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Flexible TableViewCell";

    UINib *nib = [UINib nibWithNibName:@"STFlexibleTableViewCell" bundle:nil];
    [_tableView registerNib:nib forCellReuseIdentifier:@"CellId"];
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
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [_tableView dequeueReusableCellWithIdentifier:@"CellId"];
}

@end
