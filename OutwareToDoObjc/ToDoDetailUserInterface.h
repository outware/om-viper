//
//  ToDoDetailUserInterface.h
//  OutwareToDoObjc
//
//  Created by Bjorn Juwen Ho on 23/12/2014.
//  Copyright (c) 2014 Bjorn Juwen Ho. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ToDoDetailViewModel;

/**
 *  The protocol describing methods to update the view
 */
@protocol ToDoDetailUserInterface <NSObject>

/**
 *  Method to display the to do item
 *  @param viewModel The model that will be consumed by the user interface to display the item
 */
- (void)displayItem:(ToDoDetailViewModel*)viewModel;

@end
