//
//  PickSubjectsViewController.m
//  iTutor-Remake
//
//  Created by Andrew Morgan on 4/22/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import "PickSubjectsViewController.h"
#import "SubjectsPickViewCell.h"

@interface PickSubjectsViewController ()

@end

@implementation PickSubjectsViewController
@synthesize subjectsList;

@synthesize historyList;
@synthesize mathList;
@synthesize englishList;
@synthesize foreignList;
@synthesize scienceList;

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
    subjectsList = [@[@"History",@"Math",@"English",@"Foreign Language",@"Sciences"]mutableCopy];
    
    historyList = [@[@"Geography",@"World History",@"European History",@"USA History"]mutableCopy];
    mathList = [@[@"Basic Math",@"Algebra 1",@"Geometry",@"Algebra 2",@"Pre-Calculus",@"Calculus",@"Trigonometry"]mutableCopy];
    englishList = [@[@"English",@"Some other English"]mutableCopy];
    foreignList = [@[@"Spanish",@"Chinese - Simplified",@"Chinese - Traditional",@"French"]mutableCopy];
    scienceList = [@[@"Earth Science",@"Chemistry",@"Biology",@"Physics"]mutableCopy];
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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [subjectsList count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    switch (section) {
        case 0:
            return [historyList count];
            break;
        case 1:
            return [mathList count];
            break;
        case 2:
            return [englishList count];
            break;
        case 3:
            return [foreignList count];
            break;
        case 4:
            return [scienceList count];
            break;
            
        default:
            return 0;
            break;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    SubjectsPickViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    int row = [indexPath row];
    
    switch ([indexPath section]) {
        case 0:
            cell.textLabel.text = historyList[row];
            break;
        case 1:
            cell.textLabel.text = mathList[row];
            break;
        case 2:
            cell.textLabel.text = englishList[row];
            break;
        case 3:
            cell.textLabel.text = foreignList[row];
            break;
        case 4:
            cell.textLabel.text = scienceList[row];
            break;
            
        default:
            break;
    }
    
    
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

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

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

@end
