//
//  ToDoDetailEventHandler.h
//  OutwareToDoObjc
//
//  Created by Bjorn Juwen Ho on 23/12/2014.
//  Copyright (c) 2014 Bjorn Juwen Ho. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  The protocol that describes the object handling user events
 */
@protocol ToDoDetailEventHandler <NSObject>

/**
 *  Method to the receiver to refresh its data
 */
- (void)refreshData;

/**
 *  Method to dismiss the to do detail screen
 */
- (void)dismiss;

@end
