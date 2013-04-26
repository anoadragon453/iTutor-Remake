//
//  MoreSegueViewController.m
//  CustomSegueDemo
//
//  Created by Basilio García Castillo on 19/03/13.
//  Copyright (c) 2013 Basilio García. All rights reserved.
//

#import "MoreSegueViewController.h"

@interface MoreSegueViewController ()


@end

@implementation MoreSegueViewController
@synthesize secondControl = _secondControl;
int secondSegueType;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        secondSegueType = 1;
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)secondSwitch:(id)sender {
    /*
    if(_secondControl.selectedSegmentIndex == 0){
        secondSegueType = 1;
        //NSLog(@"%d", secondSegueType);
    }
    else if(_secondControl.selectedSegmentIndex == 1){
        secondSegueType = 2;
        //NSLog(@"%d", secondSegueType);
    }
    else if(_secondControl.selectedSegmentIndex == 2){
        secondSegueType = 3;
    }
    else if(_secondControl.selectedSegmentIndex == 3){
        secondSegueType = 4;
    }
    else if(_secondControl.selectedSegmentIndex == 4){
        secondSegueType = 5;
    }
    else if(_secondControl.selectedSegmentIndex == 5){
        secondSegueType = 6;
    }
     */
    
}
 
@end
