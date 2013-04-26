//
//  InboxViewController.h
//  iTutor-Remake
//
//  Created by Andrew Morgan on 4/15/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InboxViewController : UITableViewController
@property (strong, nonatomic) NSArray *mailSenders;
@property (strong, nonatomic) NSArray *mailSubjects;

@end