//
//  RegisterViewController.h
//  iTutor-Remake
//
//  Created by Andrew Morgan on 4/16/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *emailAddressField;
@property (weak, nonatomic) IBOutlet UITextField *passField;
@property (weak, nonatomic) IBOutlet UITextField *confirmPassField;
@property (weak, nonatomic) IBOutlet UIImageView *redX;



- (IBAction)nextPressed:(UIButton *)sender;
- (IBAction)finishedEditingEmail:(UITextField *)sender;

- (IBAction)backgroundTouched:(id)sender;
- (IBAction)textFieldReturn:(id)sender;
@end
