//
//  TaskListViewController.m
//  ThingsToDo
//
//  Created by Arnoldas on 6/20/13.
//  Copyright (c) 2013 moze. All rights reserved.
//

#import "TaskListViewController.h"
#import "Task.h"
#import "AddTaskViewController.h"
#import "EditTaskViewController.h"

@interface TaskListViewController ()

@end

@implementation TaskListViewController

@synthesize tasks = _task;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
}

- (void)viewDidAppear:(BOOL)animated{
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.tasks = [[NSMutableArray alloc] init];
    /*
    Task *task = [[Task alloc] initWithName:@"my first task" done:NO];
    [self.tasks addObject:task];
    
    Task *donetask = [[Task alloc] initWithName:@"my first done task" done:YES];
    [self.tasks addObject:donetask];
    
    [self.tableView reloadData];*/
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"addTaskSegue"]){
        UINavigationController *navCon = segue.destinationViewController;
        AddTaskViewController *atvc = [navCon.viewControllers objectAtIndex:0];
       // AddTaskViewController *atvc = segue.destinationViewController;
        
        atvc.taskListViewController = self;
    }else if ([segue.identifier isEqualToString:@"EditDoneTaskSegue"] || [segue.identifier isEqualToString:@"EditNorDoneTaskSegue"]){
        EditTaskViewController *etvc = segue.destinationViewController;
        etvc.task = [self.tasks objectAtIndex:self.tableView.indexPathForSelectedRow.row];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.tasks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *NotDoneCellIdentifier = @"NotDoneTaskCell";
    static NSString *DoneCellIdentifier = @"DoneTaskCell";
    
    Task *currentTask = [self.tasks objectAtIndex:indexPath.row];
    NSString *CellIdentifier = currentTask.done ? DoneCellIdentifier : NotDoneCellIdentifier;
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    //if(){
        cell.textLabel.text = currentTask.name;
    //}
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [self.tasks removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}




// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
    Task *moveTask = [self.tasks objectAtIndex:fromIndexPath.row];
    [self.tasks removeObjectAtIndex:fromIndexPath.row];
    [self.tasks insertObject:moveTask atIndex:toIndexPath.row];
}


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

#pragma mark - IBAction 

- (void)editButtonPressed:(id)sender{
    self.editing = !self.editing;
}

@end
