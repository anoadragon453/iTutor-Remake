//
//  TutorsBrowseCollectionViewController.h
//  iTutor-Remake
//
//  Created by Andrew Morgan on 4/15/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TutorsBrowseViewCell.h"

@interface TutorsBrowseCollectionViewController : UICollectionViewController
<UICollectionViewDataSource, UICollectionViewDelegate>
@property (strong, nonatomic) NSMutableArray *masterTutorList;
@property (strong, nonatomic) NSMutableArray *tutorImages;
@property (strong, nonatomic) NSMutableArray *tutorNames;
@property (strong, nonatomic) NSMutableArray *tutorSubjects;
@property (strong, nonatomic) NSMutableArray *tutorDescriptions;
@property (strong, nonatomic) NSMutableArray *tutorGender;
@property (strong, nonatomic) NSMutableArray *tutorLocation;
@property (strong, nonatomic) NSMutableArray *deletions;

- (IBAction)search:(id)sender;

@end
