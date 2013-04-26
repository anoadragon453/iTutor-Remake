//
//  CustomSegueDemoViewController.h
//  CustomSegueDemo
//
//  Created by Basilio García Castillo on 18/03/13.
//  Copyright (c) 2013 Basilio García. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomSegueDemoViewController : UIViewController
extern int segueType;
- (IBAction)switchSegue:(id)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *control;

@end
