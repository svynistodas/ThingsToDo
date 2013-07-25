//
//  Task.h
//  ThingsToDo
//
//  Created by Arnoldas on 6/20/13.
//  Copyright (c) 2013 moze. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) BOOL done;

- (id)initWithName:(NSString *)name done:(BOOL)done;

@end
