//
//  ToDoListUserInterface.h
//  OutwareToDoObjc
//
//  Created by Bjorn Juwen Ho on 23/12/2014.
//  Copyright (c) 2014 Bjorn Juwen Ho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class ToDoListViewModel;

/**
 *  The protocol for the receiver to update the view
 */
@protocol ToDoListUserInterface <NSObject>

/**
 *  Method to display a list of items
 *  @param items The list of items that will be used to display
 */
- (void)displayItems:(ToDoListViewModel*)items;

/**
 *  Method to transition to the detail view controller
 *  @param viewController The detail view controller to transition to
 */
- (void)transitionToDetailViewController:(UIViewController*)viewController;

/**
 *  Method to dismiss the detail view controller
 *  @param viewController The detail view controller that is going to be dismissed
 */
- (void)dismissDetailViewController:(UIViewController*)viewController;
@end
