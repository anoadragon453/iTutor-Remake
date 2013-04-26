//
//  TutorDescriptionViewController.h
//  iTutor-Remake
//
//  Created by Andrew Morgan on 4/15/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TutorDescriptionViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UIImageView *image;
@property (strong, nonatomic) IBOutlet UILabel *subjectLabel;
@property (strong, nonatomic) IBOutlet UILabel *descriptionLabel;
- (IBAction)bookmarksPressed:(id)sender;

@property (strong, nonatomic) NSMutableArray *bookmarks;

@end