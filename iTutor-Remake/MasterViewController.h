//
//  MasterViewController.h
//  iTutor-Remake
//
//  Created by Andrew Morgan on 4/9/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) DetailViewController *detailViewController;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (strong,nonatomic) NSArray *tableLabels;
@property (strong, nonatomic) NSMutableArray *userEmails;
@property (strong, nonatomic) NSMutableArray *userEncryptedPasswords;

@end
