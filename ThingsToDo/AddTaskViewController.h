//
//  AddTaskViewController.h
//  ThingsToDo
//
//  Created by Arnoldas on 6/26/13.
//  Copyright (c) 2013 moze. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TaskListViewController;

@interface AddTaskViewController : UITableViewController

- (IBAction)cancelButtonPressed:(id)sender;

- (IBAction)doneButtonPressed:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *nameFiled;

@property (nonatomic, strong) TaskListViewController *taskListViewController;

@end
