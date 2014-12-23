//
//  ToDoListInteractor.m
//  OutwareToDoObjc
//
//  Created by Bjorn Juwen Ho on 23/12/2014.
//  Copyright (c) 2014 Bjorn Juwen Ho. All rights reserved.
//

#import "ToDoListInteractor.h"
#import "ToDoItemInteractor.h"

@implementation ToDoListInteractor

- (instancetype)initWithPresenter:(ToDoListPresenter *)presenter
{
    self = [super init];
    if (self) {
        _presenter = presenter;
    }
    return self;
}

- (void)refreshData
{
    [self.presenter dataAvailable:[ToDoItemInteractor sharedInteractor].allItems];
}

@end
