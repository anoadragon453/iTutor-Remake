//
//  NewLogInViewController.m
//  iTutor-Remake
//
//  Created by Andrew Morgan on 4/16/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import "NewLogInViewController.h"
#import <CommonCrypto/CommonDigest.h>

@interface NewLogInViewController ()

@end

@implementation NewLogInViewController
@synthesize emailField = _emailField;
@synthesize passField = _passField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidAppear:(BOOL)animated{
    [self.navigationItem setHidesBackButton:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationItem setHidesBackButton:YES];
    [self.passField setReturnKeyType:UIReturnKeyDone];
    [self.emailField setReturnKeyType:UIReturnKeyDone];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)convertIntoMD5:(NSString *) string{
    const char *cStr = [string UTF8String];
    unsigned char digest[16];
    
    CC_MD5( cStr, strlen(cStr), digest ); // This is the md5 call
    
    NSMutableString *resultString = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [resultString appendFormat:@"%02x", digest[i]];
    return  resultString;
}

- (IBAction)submitPressed:(id)sender {
    // Uncomment for Login to always be correct
    //[[NSUserDefaults standardUserDefaults] setObject:@"true" forKey:@"userLoggedIn"];
    
    NSString *userEncryptedPass = [self convertIntoMD5:self.passField.text];
    
    NSString *checkMeEmail = [[NSUserDefaults standardUserDefaults] stringForKey:@"userEmails"];
    NSString *checkMePass = [[NSUserDefaults standardUserDefaults] stringForKey:@"userEncryptedPasses"];
    
    //int arrayLength =
    
#warning Remove !'s and || to && for it to be correct.
    //for(int i = 0;i<)
        if(![self.emailField.text isEqualToString:checkMeEmail] || ![userEncryptedPass isEqualToString:checkMePass]){
            [[NSUserDefaults standardUserDefaults] setObject:@"true" forKey:@"userLoggedIn"];
            [self performSegueWithIdentifier: @"showMaster" sender: self];
            NSLog(@"showMaster");
        }else{
            [self showAlert:@"Email Address or Password is incorrect." title:@"Error"];
        }
    
    
}

- (void)showAlert:(NSString *)message title:(NSString *)title {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    alert.alertViewStyle = UIAlertViewStyleDefault;
    [alert show];
}

- (IBAction)backgroundTouched:(id)sender{
    [self.emailField resignFirstResponder];
    [self.passField  resignFirstResponder];
}
- (IBAction)textFieldReturn:(id)sender{
    [sender resignFirstResponder];
}

// Don't forget to link the touch-down for the Background, and the Did End on Exit to the textFieldReturn.

// Refer to the RegisterViewController in iTutor-Remake.

@end
