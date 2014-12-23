//
//  ToDoDataStore.h
//  OutwareToDoObjc
//
//  Created by Bjorn Juwen Ho on 23/12/2014.
//  Copyright (c) 2014 Bjorn Juwen Ho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToDoItem.h"

/** 
 *  The in-memory to do data store
 */
@interface ToDoDataStore : NSObject

/** The list of to do items in the store */
@property (nonatomic, strong) NSArray* items;

/**
 *  Method to get the singleton instance of the data store
 *  @return The singleton instance of the store
 */
+ (instancetype)sharedStore;

@end
