//
//  DetailViewController.h
//  iTutor-Remake
//
//  Created by Andrew Morgan on 4/9/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
