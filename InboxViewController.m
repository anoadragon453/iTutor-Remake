//
//  InboxViewController.m
//  iTutor-Remake
//
//  Created by Andrew Morgan on 4/15/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import "InboxViewController.h"
#import "InboxViewCell.h"

@interface InboxViewController ()

@end

@implementation InboxViewController

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
    _mailSenders = [[NSArray alloc]
                        initWithObjects:@"Yolanda Barnhill",
                        @"Darnell Melvin",
                        @"Britany Spears", nil];
    _mailSubjects = [[NSArray alloc]
                        initWithObjects:@"Hi there, I hope we have a great time learning stuff together!",
                        @"I really want to share this experience with you!",
                        @"Who are you? Stop messaging me!",nil];
    
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
    return _mailSenders.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"InboxCell";
    
    InboxViewCell *cell = [tableView
                            dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.senderLabel.text = [_mailSenders objectAtIndex: [indexPath row]];
    cell.subjectLabel.text = [_mailSubjects objectAtIndex: [indexPath row]];
    return cell;
}
#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *sender = [_mailSenders objectAtIndex: [indexPath row]];
    NSString *subject = [_mailSubjects objectAtIndex: [indexPath row]];
    [[NSUserDefaults standardUserDefaults] setObject:sender forKey:@"Sender"];
    [[NSUserDefaults standardUserDefaults] setObject:subject forKey:@"Subject"];
    [self performSegueWithIdentifier: @"segueToMessage" sender: self];
}

@end
