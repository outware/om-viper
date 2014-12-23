//
//  ToDoListRouter.m
//  OutwareToDoObjc
//
//  Created by Bjorn Juwen Ho on 23/12/2014.
//  Copyright (c) 2014 Bjorn Juwen Ho. All rights reserved.
//

#import "ToDoListRouter.h"
#import "ToDoDetailModuleFactory.h"

@implementation ToDoListRouter

- (UIViewController *)detailViewControllerForItemAtIndex:(NSInteger)index withDismiss:(void (^)(id))dismissBlock
{
    return [ToDoDetailModuleFactory createModuleWithItem:index withDismiss:dismissBlock];
}

@end
