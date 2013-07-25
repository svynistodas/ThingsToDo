//
//  EditTaskViewController.h
//  ThingsToDo
//
//  Created by Arnoldas on 6/27/13.
//  Copyright (c) 2013 moze. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Task;
@interface EditTaskViewController : UITableViewController

@property (nonatomic, strong) IBOutlet UITextField *nameFiled;
@property (nonatomic, strong) IBOutlet UISwitch *doneSwitch;
@property (nonatomic, strong) Task *task;

- (IBAction)taskDataChange:(id)sender;

@end
