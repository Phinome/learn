//
//  TodoItem.h
//  TodoList
//
//  Created by Phinome on 2/9/15.
//  Copyright (c) 2015 Supertree. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TodoItem : NSObject

@property NSString *itemName;

@property BOOL completed;

@property (readonly) NSDate *creationDate;


@end
