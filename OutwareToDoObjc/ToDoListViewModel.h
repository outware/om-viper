//
//  ToDoListViewModel.h
//  OutwareToDoObjc
//
//  Created by Bjorn Juwen Ho on 23/12/2014.
//  Copyright (c) 2014 Bjorn Juwen Ho. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  The to do list view model that will be consumed by the to do list view
 */
@interface ToDoListViewModel : NSObject

/** The array of items to display in the to do list view */
@property (nonatomic, copy) NSArray* items;

@end
