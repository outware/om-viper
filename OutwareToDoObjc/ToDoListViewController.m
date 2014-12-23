//
//  MasterViewController.m
//  OutwareToDoObjc
//
//  Created by Bjorn Juwen Ho on 23/12/2014.
//  Copyright (c) 2014 Bjorn Juwen Ho. All rights reserved.
//

#import "ToDoListViewController.h"
#import "ToDoListViewModel.h"

@interface ToDoListViewController ()

@property (nonatomic, strong) ToDoListViewModel* viewModel;

@end

@implementation ToDoListViewController

- (instancetype)initWithHandler:(id<ToDoListEventHandler>)handler
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        _handler = handler;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"CellIdentifier"];
    
    [self.handler refreshData];
}

- (void)displayItems:(ToDoListViewModel *)items
{
    self.viewModel = items;
    [self.tableView reloadData];
}

- (void)transitionToDetailViewController:(UIViewController *)viewController
{
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)dismissDetailViewController:(UIViewController *)viewController
{
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.viewModel.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIdentifier" forIndexPath:indexPath];

    cell.textLabel.text = self.viewModel.items[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.handler didSelectItemAtIndex:indexPath.row];
}

@end
