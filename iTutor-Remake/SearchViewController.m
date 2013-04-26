//
//  SearchViewController.m
//  iTutor-Remake
//
//  Created by Andrew Morgan on 4/19/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import "SearchViewController.h"
#import "SearchViewCell.h"

@interface SearchViewController ()

@end

@implementation SearchViewController
@synthesize subjectList;
@synthesize radiusList;
@synthesize genderList;
@synthesize filterList;
@synthesize tutorImages;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    tutorImages = [[NSUserDefaults standardUserDefaults] objectForKey:@"tutorImages"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    subjectList = [@[@"Math",@"Science",@"English",@"History",@"Foreign Language"]mutableCopy];
    genderList = [@[@"Male",@"Female"]mutableCopy];
    radiusList = [[NSMutableArray alloc] init];
    
    [radiusList addObject: [NSNumber numberWithInt: 1]];
    [radiusList addObject: [NSNumber numberWithInt: 2]];
    [radiusList addObject: [NSNumber numberWithInt: 5]];
    [radiusList addObject: [NSNumber numberWithInt: 10]];
    [radiusList addObject: [NSNumber numberWithInt: 20]];
    [radiusList addObject: [NSNumber numberWithInt: 50]];
    
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
    // Return the number of sections.
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if(section == 0){
        return [subjectList count];
    }else if(section == 1){
        return [radiusList count];
    }else if(section == 2){
        return [genderList count];
    }else{
        return 0;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if(section == 0){
        return @"Subject";
    }else if(section == 1){
        return @"Radius";
    }else{
        return @"Gender";
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"filterCell";
    SearchViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NSInteger row = [indexPath row];
    NSInteger section = [indexPath section];
    switch (section) {
        case 0:
            cell.filterLabel.text = [subjectList objectAtIndex:row];
            break;
        case 1:
            cell.filterLabel.text = [NSString stringWithFormat: @"%@ Miles", radiusList[row]];
            break;
        case 2:
            cell.filterLabel.text = [genderList objectAtIndex:row];
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
    
    
    // int row = [indexPath row];
    
    if ([self.tableView cellForRowAtIndexPath:indexPath].accessoryType == UITableViewCellAccessoryNone){
        [self.tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryCheckmark;
        [filterList removeObjectIdenticalTo:@[indexPath]];
        [self.tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationNone];
    }else if([self.tableView cellForRowAtIndexPath:indexPath].accessoryType == UITableViewCellAccessoryCheckmark){
        [self.tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryNone;
        [filterList addObject:@[indexPath]];
         [self.tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationNone];
    }
    [[NSUserDefaults standardUserDefaults] setObject:filterList forKey:@"filterList"];
    [self.tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationNone];
}

- (IBAction)searchPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil]; // Actually, dismiss this view controller from the previous view controller. :3
}

- (IBAction)cancelPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
