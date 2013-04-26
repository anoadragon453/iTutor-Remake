//
//  TutorDescriptionViewController.m
//  iTutor-Remake
//
//  Created by Andrew Morgan on 4/15/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import "TutorDescriptionViewController.h"

@interface TutorDescriptionViewController ()

@end

@implementation TutorDescriptionViewController
@synthesize bookmarks = _bookmarks;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.name.text = [[NSUserDefaults standardUserDefaults] stringForKey:@"Name"];
    NSData* imageData = [[NSUserDefaults standardUserDefaults] objectForKey:@"Image"];
    self.image.image = [UIImage imageWithData:imageData];
	self.subjectLabel.text = [[NSUserDefaults standardUserDefaults] stringForKey:@"Subjects"];
    self.descriptionLabel.text = [[NSUserDefaults standardUserDefaults] stringForKey:@"Description"];
    _bookmarks = [[NSMutableArray alloc]init];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)bookmarksPressed:(id)sender {
    [_bookmarks addObject:self.name.text];
    NSString* s = self.name.text;
    NSLog(@"%@", s);
    int i = _bookmarks.count;
    NSLog(@"This is the count of _bookmarks: %d",i);
    NSLog(@"Added %@ to bookmarks.", self.name.text);
    [[NSUserDefaults standardUserDefaults] setObject:_bookmarks forKey:@"Bookmarks"];
    
}
@end
