//
//  SendMessageViewController.m
//  iTutor-Remake
//
//  Created by Andrew Morgan on 4/16/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import "SendMessageViewController.h"

@interface SendMessageViewController ()

@end

@implementation SendMessageViewController
@synthesize messageBody = _messageBody;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSString *tutorName = [[NSUserDefaults standardUserDefaults] stringForKey:@"Sender"];
    
    self.messageBody.text = [NSString stringWithFormat: @"Hi %@, I'd like to be tutored by you and stuff. REPLY WITH NICE COMMENtS ABOUT MY HAIR PLEASE! :D:D::D:D:D:D:D", tutorName];
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

@end
