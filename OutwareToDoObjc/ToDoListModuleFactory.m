//
//  ToDoListModuleFactory.m
//  OutwareToDoObjc
//
//  Created by Bjorn Juwen Ho on 23/12/2014.
//  Copyright (c) 2014 Bjorn Juwen Ho. All rights reserved.
//

#import "ToDoListModuleFactory.h"
#import "ToDoListViewController.h"
#import "ToDoListPresenter.h"
#import "ToDoListInteractor.h"
#import "ToDoListRouter.h"

@implementation ToDoListModuleFactory

+ (UIViewController *)createModule
{
    ToDoListViewController* vc = [[ToDoListViewController alloc] initWithHandler:nil];
    ToDoListPresenter* presenter = [[ToDoListPresenter alloc] initWithUserInterface:nil interactor:nil router:nil];
    ToDoListInteractor* interactor = [[ToDoListInteractor alloc] initWithPresenter:presenter];
    ToDoListRouter* router = [[ToDoListRouter alloc] init];
    vc.handler = presenter;
    presenter.userInterface = vc;
    presenter.interactor = interactor;
    presenter.router = router;
    return vc;
}

@end
