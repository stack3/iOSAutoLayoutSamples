//
//  STViewController.m
//  AutoLayoutSamples
//
//  Created by EIMEI on 2013/09/28.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STMainViewController.h"
#import "STFirstLayoutViewController.h"
#import "STSecondLayoutViewController.h"
#import "STBasicLayoutViewController.h"
#import "STResizeLabelViewController.h"
#import "STCenteringViewController.h"

@interface STMainViewController ()

@end

#define _STCellId @"CellId"

typedef enum {
    _STMenuItemIndexFirstLayout,
    _STMenuItemIndexSecondLayout,
    _STMenuItemIndexBasicLayout,
    _STMenuItemIndexCentering,
    _STMenuItemIndexResizeLabel,
} _STMenuItemIndex;

@interface STMainViewController()

@property(weak, nonatomic) IBOutlet UITableView *tableView;
@property(strong, nonatomic) NSMutableArray *menuItems;

@end

@implementation STMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"Menu";
    
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:_STCellId];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    _menuItems = [NSMutableArray arrayWithCapacity:10];
    [_menuItems addObject:@"First Layout"];
    [_menuItems addObject:@"Second Layout"];
    [_menuItems addObject:@"Basic Layout"];
    [_menuItems addObject:@"Centering"];
    [_menuItems addObject:@"Resize Label"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [_tableView deselectRowAtIndexPath:_tableView.indexPathForSelectedRow animated:YES];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:_STCellId];
    cell.textLabel.text = [_menuItems objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == _STMenuItemIndexFirstLayout) {
        STFirstLayoutViewController *con = [[STFirstLayoutViewController alloc] init];
        [self.navigationController pushViewController:con animated:YES];
    } else if (indexPath.row == _STMenuItemIndexSecondLayout) {
        STSecondLayoutViewController *con = [[STSecondLayoutViewController alloc] init];
        [self.navigationController pushViewController:con animated:YES];
    } else if (indexPath.row == _STMenuItemIndexBasicLayout) {
        STBasicLayoutViewController *con = [[STBasicLayoutViewController alloc] init];
        [self.navigationController pushViewController:con animated:YES];
    } else if (indexPath.row == _STMenuItemIndexResizeLabel) {
        STResizeLabelViewController *con = [[STResizeLabelViewController alloc] init];
        [self.navigationController pushViewController:con animated:YES];
    } else if (indexPath.row == _STMenuItemIndexCentering) {
        STCenteringViewController *con = [[STCenteringViewController alloc] init];
        [self.navigationController pushViewController:con animated:YES];
    }
}

@end
