//
//  AddTaskViewController.m
//  ThingsToDo
//
//  Created by Arnoldas on 6/26/13.
//  Copyright (c) 2013 moze. All rights reserved.
//

#import "AddTaskViewController.h"
#import "TaskListViewController.h"
#import "Task.h"

@interface AddTaskViewController ()

@end

@implementation AddTaskViewController

@synthesize nameFiled = _nameFiled;
@synthesize taskListViewController = _taskListViewController;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -IBAction

- (IBAction)cancelButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)doneButtonPressed:(id)sender {
    Task *newTask = [[Task alloc] initWithName:self.nameFiled.text done:NO];
    [self.taskListViewController.tasks addObject:newTask];
    [self dismissViewControllerAnimated:YES completion:nil];

}
@end
