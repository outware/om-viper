//
//  ToDoListModuleFactory.h
//  OutwareToDoObjc
//
//  Created by Bjorn Juwen Ho on 23/12/2014.
//  Copyright (c) 2014 Bjorn Juwen Ho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 *  The to do list screen module factory
 */
@interface ToDoListModuleFactory : NSObject

/**
 *  The class method to create the to do list
 *  @return The initialised to do list view controller
 */
+ (UIViewController*)createModule;

@end
