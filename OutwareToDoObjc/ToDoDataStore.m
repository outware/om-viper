//
//  ToDoDataStore.m
//  OutwareToDoObjc
//
//  Created by Bjorn Juwen Ho on 23/12/2014.
//  Copyright (c) 2014 Bjorn Juwen Ho. All rights reserved.
//

#import "ToDoDataStore.h"

@implementation ToDoDataStore

+ (instancetype)sharedStore
{
    static ToDoDataStore* dataStore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataStore = [[ToDoDataStore alloc] init];
    });
    return dataStore;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSMutableArray* array = [NSMutableArray array];
        
        ToDoItem* item1 = [[ToDoItem alloc] init];
        item1.title = @"FOO";
        item1.content = @"foo";
        [array addObject:item1];
        
        item1 = [[ToDoItem alloc] init];
        item1.title = @"BAR";
        item1.content = @"bar";
        [array addObject:item1];
        
        item1 = [[ToDoItem alloc] init];
        item1.title = @"BAZ";
        item1.content = @"baz";
        [array addObject:item1];
        
        _items = [array copy];
    }
    return self;
}

@end
