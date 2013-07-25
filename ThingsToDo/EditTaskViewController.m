//
//  EditTaskViewController.m
//  ThingsToDo
//
//  Created by Arnoldas on 6/27/13.
//  Copyright (c) 2013 moze. All rights reserved.
//

#import "EditTaskViewController.h"
#import "Task.h"

@interface EditTaskViewController ()

@end

@implementation EditTaskViewController

@synthesize nameFiled, doneSwitch, task;

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
    
    self.nameFiled.text = self.task.name;
    [self.doneSwitch setOn:self.task.done];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBAction

- (void)taskDataChange:(id)sender{
    self.task.name = self.nameFiled.text;
    self.task.done = self.doneSwitch.isOn;
}

@end
