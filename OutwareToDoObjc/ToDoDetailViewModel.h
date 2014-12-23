//
//  ToDoDetailViewModel.h
//  OutwareToDoObjc
//
//  Created by Bjorn Juwen Ho on 23/12/2014.
//  Copyright (c) 2014 Bjorn Juwen Ho. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  The to do detail view model. This is used by the view controller to display updates to its UI
 */
@interface ToDoDetailViewModel : NSObject

/** The title of the to do detail */
@property (nonatomic, copy) NSString* title;

/** The content of the to do detail */
@property (nonatomic, copy) NSString* content;
@end
