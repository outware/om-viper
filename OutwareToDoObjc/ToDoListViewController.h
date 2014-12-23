//
//  ToDoListViewController.h
//  OutwareToDoObjc
//
//  Created by Bjorn Juwen Ho on 23/12/2014.
//  Copyright (c) 2014 Bjorn Juwen Ho. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoListUserInterface.h"
#import "ToDoListEventHandler.h"

/**
 *  The to do list screen which shows a table of saved to do items
 */
@interface ToDoListViewController : UITableViewController <ToDoListUserInterface>

/** The event handler for the view controller */
@property (nonatomic, strong) id<ToDoListEventHandler> handler;

/**
 *  Method to initialise the view controller
 *  @param handler The event handler that the view controller will send events to handle
 *  @return The initialised instance
 */
- (instancetype)initWithHandler:(id<ToDoListEventHandler>)handler;

@end

