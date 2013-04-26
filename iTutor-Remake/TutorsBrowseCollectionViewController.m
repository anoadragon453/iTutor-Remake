//
//  TutorsBrowseCollectionViewController.m
//  iTutor-Remake
//
//  Created by Andrew Morgan on 4/15/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import "TutorsBrowseCollectionViewController.h"

@interface TutorsBrowseCollectionViewController ()

@end

@implementation TutorsBrowseCollectionViewController
@synthesize masterTutorList = _masterTutorList;
@synthesize deletions;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    deletions = [[NSUserDefaults standardUserDefaults] objectForKey:@"filterList"];
    
    [self.collectionView deleteItemsAtIndexPaths:deletions];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //self.view.backgroundColor = [UIColor colorWithRed:161.0/255.0 green:162.0/255.0 blue:61.0/255.0 alpha:1];
    // Of course if this were a real app, this info would be stored on an external server.
    
    _tutorImages = [@[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",
                    @"6.jpg",@"7.jpg",@"8.jpg",@"9.jpg",@"10.jpg",
                    @"11.jpg",@"12.jpg",@"13.jpg",@"14.jpg"]
                    mutableCopy];
    _tutorNames = [@[@"Wihelmina Ruth",
                   @"Anneliese June",
                   @"Francesca Leonie",
                   @"Francesca Pearl",
                   @"Matilda Primrose",
                   @"Audrey Matilda",
                   @"Bella Leonie",
                   @"Henry James",
                   @"Matthew Henry",
                   @"Oliver David",
                   @"Finn Casper",
                   @"Liam David",
                   @"Oliver David",
                   @"Gabriel David",
                   @"Bella Leonie"]
                   mutableCopy];
    _tutorSubjects = [@[@"Math, Science",@"English",@"Math",@"Science",
                      @"Math, Science",@"English",@"Math",@"Science",
                      @"Math, Science",@"English",@"Math",@"Science",
                      @"Math, Science",@"English",@"Math"]
                      mutableCopy];
    _tutorDescriptions = [@[@"I'm so happy to be tutoring you!",
                          @"I WILL CRUSH YOUR MISUNDERSTANDINGS!",
                          @"Hey Kids! :D",
                          @"I'll prevent you from BOMBING your tests!"]
                          mutableCopy];
    _tutorGender = [@[@"Male",@"Male",@"Female",@"Male",
                    @"Male",@"Female",@"Male",@"Male",
                    @"Male",@"Male",@"Female",@"Male",
                    @"Female",@"Female"]mutableCopy];
    // @"94582",@"94551",@"94566" are near 94568.
	_tutorLocation = [@[@"94582",@"94551",@"94566",@"90210",@"92646",
                      @"91331",@"94566",@"94582",@"94551",@"90210",
                      @"90210",@"94551",@"90210"@"94582",@"90210"]mutableCopy];
    
    _masterTutorList = [@[_tutorImages,
                        _tutorNames,
                        _tutorSubjects,
                        _tutorLocation,
                        _tutorGender,
                        _tutorDescriptions]
                        mutableCopy];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _tutorImages.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    TutorsBrowseViewCell *myCell = [collectionView
                                    dequeueReusableCellWithReuseIdentifier:@"BrowseTutorsCell"
                                    forIndexPath:indexPath];
    
    UIImage *image;
    
    int row = [indexPath row];
    
    image = [UIImage imageNamed:_tutorImages[row]];
    myCell.tutorNameLabel.text = [_tutorNames objectAtIndex: [indexPath row]];
    
    myCell.imageView.image = image;
    
    return myCell;
    
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    int row = [indexPath row];
    NSString *name = [_tutorNames objectAtIndex:[indexPath row]];
    NSString *description;
    if([indexPath row] == 4){
        description = [_tutorDescriptions objectAtIndex:1];
    }else if([indexPath row] == 6){
        description = [_tutorDescriptions objectAtIndex:2];
    }else if([indexPath row] == 11){
        description = [_tutorDescriptions objectAtIndex:3];
    }
    else{
        description = [_tutorDescriptions objectAtIndex:0];
    }
    UIImage *image = [UIImage imageNamed:_tutorImages[row]];
    NSString *subjects = [_tutorSubjects objectAtIndex:[indexPath row]];
    [[NSUserDefaults standardUserDefaults] setObject:name forKey:@"Name"];
        [[NSUserDefaults standardUserDefaults] setObject:subjects forKey:@"Subjects"];
        [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat: @"\"%@\"", description] forKey:@"Description"];
        [[NSUserDefaults standardUserDefaults] setObject:UIImagePNGRepresentation(image) forKey:@"Image"];
    [self performSegueWithIdentifier: @"segueToDescription" sender: self];
    
    
}

- (IBAction)search:(id)sender {
    
    [[NSUserDefaults standardUserDefaults] setObject:_tutorImages forKey:@"tutorImages"];

}
@end
