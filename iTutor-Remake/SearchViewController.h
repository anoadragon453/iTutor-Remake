//
//  SearchViewController.h
//  iTutor-Remake
//
//  Created by Andrew Morgan on 4/19/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchViewController : UITableViewController

@property (strong, nonatomic) NSMutableArray* subjectList;
@property (strong, nonatomic) NSMutableArray* radiusList;
@property (strong, nonatomic) NSMutableArray* genderList;
@property (strong, nonatomic) NSMutableArray* filterList;
@property (strong, nonatomic) NSMutableArray* tutorImages;
- (IBAction)searchPressed:(id)sender;
- (IBAction)cancelPressed:(id)sender;

@end
