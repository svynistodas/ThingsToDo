//
//  TaskListViewController.h
//  ThingsToDo
//
//  Created by Arnoldas on 6/20/13.
//  Copyright (c) 2013 moze. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TaskListViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *tasks;

- (IBAction)editButtonPressed:(id)sender;

@end
