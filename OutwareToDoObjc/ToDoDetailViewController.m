//
//  ToDoDetailViewController.m
//  OutwareToDoObjc
//
//  Created by Bjorn Juwen Ho on 23/12/2014.
//  Copyright (c) 2014 Bjorn Juwen Ho. All rights reserved.
//

#import "ToDoDetailViewController.h"
#import "ToDoDetailViewModel.h"

@interface ToDoDetailViewController ()
@property (nonatomic, strong) ToDoDetailViewModel* viewModel;
@end

@implementation ToDoDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.handler refreshData];
}

- (void)displayItem:(ToDoDetailViewModel *)item
{
    self.viewModel = item;
}

- (IBAction)dismissButtonTapped:(id)sender
{
    [self.handler dismiss];
}

- (void)setViewModel:(ToDoDetailViewModel *)viewModel
{
    _viewModel = viewModel;
    self.label.text = viewModel.title;
    self.textView.text = viewModel.content;
}

@end
