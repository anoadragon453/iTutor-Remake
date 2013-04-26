//
//  NewLogInViewController.h
//  iTutor-Remake
//
//  Created by Andrew Morgan on 4/16/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewLogInViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *emailField;
@property (strong, nonatomic) IBOutlet UITextField *passField;
- (IBAction)submitPressed:(id)sender;

- (IBAction)backgroundTouched:(id)sender;
- (IBAction)textFieldReturn:(id)sender;

@end
