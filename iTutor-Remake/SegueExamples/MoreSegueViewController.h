//
//  MoreSegueViewController.h
//  CustomSegueDemo
//
//  Created by Basilio García Castillo on 19/03/13.
//  Copyright (c) 2013 Basilio García. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoreSegueViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *secondControl;
- (IBAction)secondSwitch:(id)sender;
extern int secondSegueType;

@end
