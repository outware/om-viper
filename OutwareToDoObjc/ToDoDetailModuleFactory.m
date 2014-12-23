//
//  ToDoDetailModuleFactory.m
//  OutwareToDoObjc
//
//  Created by Bjorn Juwen Ho on 23/12/2014.
//  Copyright (c) 2014 Bjorn Juwen Ho. All rights reserved.
//

#import "ToDoDetailModuleFactory.h"
#import "ToDoDetailPresenter.h"
#import "ToDoDetailInteractor.h"
#import "ToDoDetailViewController.h"

@implementation ToDoDetailModuleFactory

+ (UIViewController *)createModuleWithItem:(NSInteger)itemId withDismiss:(void (^)(id))dismissBlock
{
    ToDoDetailPresenter* presenter = [[ToDoDetailPresenter alloc] initWithDismiss:dismissBlock];
    ToDoDetailInteractor* interactor = [[ToDoDetailInteractor alloc] init];
    interactor.indexToRetrieve = itemId;
    ToDoDetailViewController* vc = [[ToDoDetailViewController alloc] initWithNibName:@"ToDoDetailViewController" bundle:[NSBundle mainBundle]];
    vc.handler = presenter;
    presenter.userInterface = vc;
    presenter.interactor = interactor;
    interactor.presenter = presenter;
    return vc;
}

@end
