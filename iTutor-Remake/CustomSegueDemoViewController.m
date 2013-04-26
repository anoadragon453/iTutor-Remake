//
//  CustomSegueDemoViewController.m
//  CustomSegueDemo
//
//  Created by Basilio García Castillo on 18/03/13.
//  Copyright (c) 2013 Basilio García. All rights reserved.
//

#import "CustomSegueDemoViewController.h"

@interface CustomSegueDemoViewController ()

@end

@implementation CustomSegueDemoViewController
@synthesize control = _control;
int segueType;


- (void)viewDidLoad
{
    segueType = 1;
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES ];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchSegue:(id)sender {
    if(_control.selectedSegmentIndex == 0){
        segueType = 1;
        //NSLog(@"%d", segueType);
    }
    else if(_control.selectedSegmentIndex == 1){
        segueType = 2;
        //NSLog(@"%d", segueType);
    }
    else if(_control.selectedSegmentIndex == 2){
        segueType = 3;
    }
    else if(_control.selectedSegmentIndex == 3){
        segueType = 4;
    }
    else if(_control.selectedSegmentIndex == 4){
        segueType = 5;
    }
    else if(_control.selectedSegmentIndex == 5){
        segueType = 6;
    }
    


}
@end
