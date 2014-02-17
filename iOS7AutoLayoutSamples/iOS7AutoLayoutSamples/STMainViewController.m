//
//  STViewController.m
//  AutoLayoutSamples
//
//  Created by EIMEI on 2013/09/28.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STMainViewController.h"
#import "STBasicLayoutViewController.h"
#import "STResizeLabelViewController.h"
#import "STCenteringViewController.h"
#import "STResizeHorizontalViewController.h"
#import "STResizeVerticalViewController.h"
#import "STFillViewController.h"
#import "STHideViewController.h"
#import "STCustomViewController.h"
#import "STFlexibleCustomViewController.h"
#import "STFlexibleTableViewCellViewController.h"
#import "STVerticalScrollViewController.h"

@interface STMainViewController ()

@end

#define _STCellId @"CellId"

typedef enum {
    _STMenuItemIndexBasicLayout,
    _STMenuItemIndexCentering,
    _STMenuItemIndexResizeLabel,
    _STMenuItemIndexResizeHorizontal,
    _STMenuItemIndexResizeVertical,
    _STMenuItemIndexFill,
    _STMenuItemIndexHide,
    _STMenuItemIndexCustomView,
    _STMenuItemIndexFlexibleCustomView,
    _STMenuItemIndexFlexibleTableViewCell,
    _STMenuItemVerticalScrollView
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
    [_menuItems addObject:@"Basic Layout"];
    [_menuItems addObject:@"Centering"];
    [_menuItems addObject:@"Resize Label"];
    [_menuItems addObject:@"Resize Horizontal"];
    [_menuItems addObject:@"Resize Vertical"];
    [_menuItems addObject:@"Fill"];
    [_menuItems addObject:@"Hide"];
    [_menuItems addObject:@"CustomView"];
    [_menuItems addObject:@"Flexible CustomView"];
    [_menuItems addObject:@"Flexible TableViewCell"];
    [_menuItems addObject:@"Vertical ScrollView"];
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
    if (indexPath.row == _STMenuItemIndexBasicLayout) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"STBasicLayoutViewController" bundle:nil];
        STBasicLayoutViewController *con = [sb instantiateInitialViewController];
        [self.navigationController pushViewController:con animated:YES];
    } else if (indexPath.row == _STMenuItemIndexCentering) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"STCenteringViewController" bundle:nil];
        STCenteringViewController *con = [sb instantiateInitialViewController];
        [self.navigationController pushViewController:con animated:YES];
    } else if (indexPath.row == _STMenuItemIndexResizeLabel) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"STResizeLabelViewController" bundle:nil];
        STCenteringViewController *con = [sb instantiateInitialViewController];
        [self.navigationController pushViewController:con animated:YES];
    } else if (indexPath.row == _STMenuItemIndexResizeHorizontal) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"STResizeHorizontalViewController" bundle:nil];
        STResizeHorizontalViewController *con = [sb instantiateInitialViewController];
        [self.navigationController pushViewController:con animated:YES];
    } else if (indexPath.row == _STMenuItemIndexResizeVertical) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"STResizeVerticalViewController" bundle:nil];
        STResizeVerticalViewController *con = [sb instantiateInitialViewController];
        [self.navigationController pushViewController:con animated:YES];
    } else if (indexPath.row == _STMenuItemIndexFill) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"STFillViewController" bundle:nil];
        STResizeVerticalViewController *con = [sb instantiateInitialViewController];
        [self.navigationController pushViewController:con animated:YES];
    } else if (indexPath.row == _STMenuItemIndexHide) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"STHideViewController" bundle:nil];
        STResizeVerticalViewController *con = [sb instantiateInitialViewController];
        [self.navigationController pushViewController:con animated:YES];
    } else if (indexPath.row == _STMenuItemIndexCustomView) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"STCustomViewController" bundle:nil];
        STCustomViewController *con = [sb instantiateInitialViewController];
        [self.navigationController pushViewController:con animated:YES];
    } else if (indexPath.row == _STMenuItemIndexFlexibleCustomView) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"STFlexibleCustomViewController" bundle:nil];
        STFlexibleCustomViewController *con = [sb instantiateInitialViewController];
        [self.navigationController pushViewController:con animated:YES];
    } else if (indexPath.row == _STMenuItemIndexFlexibleTableViewCell) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"STFlexibleTableViewCellViewController" bundle:nil];
        STFlexibleTableViewCellViewController *con = [sb instantiateInitialViewController];
        [self.navigationController pushViewController:con animated:YES];
    } else if (indexPath.row == _STMenuItemVerticalScrollView) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"STVerticalScrollViewController" bundle:nil];
        STVerticalScrollViewController *con = [sb instantiateInitialViewController];
        [self.navigationController pushViewController:con animated:YES];
    }
}

@end
