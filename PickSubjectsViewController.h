//
//  PickSubjectsViewController.h
//  iTutor-Remake
//
//  Created by Andrew Morgan on 4/22/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickSubjectsViewController : UITableViewController
@property (strong, nonatomic) NSMutableArray* subjectsList;

@property (strong, nonatomic) NSMutableArray* historyList;
@property (strong, nonatomic) NSMutableArray* mathList;
@property (strong, nonatomic) NSMutableArray* englishList;
@property (strong, nonatomic) NSMutableArray* foreignList;
@property (strong, nonatomic) NSMutableArray* scienceList;

@end
