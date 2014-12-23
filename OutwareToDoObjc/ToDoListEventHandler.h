//
//  ToDoListEventHandler.h
//  OutwareToDoObjc
//
//  Created by Bjorn Juwen Ho on 23/12/2014.
//  Copyright (c) 2014 Bjorn Juwen Ho. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  The protocol for the receiver to handle user events from the view
 */
@protocol ToDoListEventHandler <NSObject>

/**
 *  Method to indicate that a to do item has been selected
 *  @param index The item index that was selected
 */
- (void)didSelectItemAtIndex:(NSInteger)index;

/**
 *  Method to indicate to add a new to do item
 */
- (void)didSelectNewItem;

/**
 *  Method to refresh the data
 */
- (void)refreshData;
@end
