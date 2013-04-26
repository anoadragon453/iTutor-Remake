//
//  TutorInfoEntryViewController.m
//  iTutor
//
//  Created by Siewkeat on 26/3/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import "RegisterViewController.h"
#import <CommonCrypto/CommonDigest.h>

@interface RegisterViewController()<UITextFieldDelegate>

@end

@implementation RegisterViewController
@synthesize emailAddressField = _emailAddressField;
@synthesize passField = _passField;
@synthesize confirmPassField = _confirmPassField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.redX.alpha = 0.0f;
    [_emailAddressField setReturnKeyType:UIReturnKeyDone];
    [self.passField setReturnKeyType:UIReturnKeyDone];
    [self.confirmPassField setReturnKeyType:UIReturnKeyDone];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewDidUnload {
    [self setEmailAddressField:nil];
    [self setPassField:nil];
    [self setConfirmPassField:nil];
    [self setRedX:nil];
    [super viewDidUnload];
}
- (NSString *)convertIntoMD5:(NSString *) string{
    const char *cStr = [string UTF8String];
    unsigned char digest[16];
    
    CC_MD5( cStr, strlen(cStr), digest ); // This is the md5 call
    
    NSMutableString *resultString = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [resultString appendFormat:@"%02x", digest[i]];
    NSLog(@"%@",resultString);
    return  resultString;
}

- (IBAction)nextPressed:(UIButton *)sender {
    if([self.emailAddressField.text isEqualToString:@""] || [self.passField.text isEqualToString:@""] || [self.confirmPassField.text isEqualToString:@""]){ //Show alert.
        [self showAlert:@"Please fill out all fields." title:@"Error"];
    }else if(![self.passField.text isEqualToString:self.confirmPassField.text]){ //Show alert.
        [self showAlert:@"Passwords do not match." title:@"Error"];
    }else if(self.redX.alpha == 1.0f){
        [self showAlert:@"Email Address is invalid" title:@"Error"];
    }
    else{ // Save Info to NSUser Defaults and Segue.
        [[NSUserDefaults standardUserDefaults] setValue:self.emailAddressField.text forKey:@"userEmail"];
        
        [[NSUserDefaults standardUserDefaults] setValue:[self convertIntoMD5:self.passField.text] forKey:@"userEncryptedPass"];
        
        [self performSegueWithIdentifier: @"segueToPickSubjects" sender: self];
    }
}
- (void)showAlert:(NSString *)message title:(NSString *)title {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    alert.alertViewStyle = UIAlertViewStyleDefault;
    [alert show];
}
- (IBAction)finishedEditingEmail:(id)sender {
    if(![self validateEmail:self.emailAddressField.text]){
        self.redX.alpha = 1.0f;
    }else{
        self.redX.alpha = 0.0f;
    }
}

- (BOOL)validateEmail:(NSString *)emailStr {
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:emailStr];
}

- (IBAction)backgroundTouched:(id)sender{
    [self.emailAddressField resignFirstResponder];
    [self.passField resignFirstResponder];
    [self.confirmPassField  resignFirstResponder];
}
- (IBAction)textFieldReturn:(id)sender{
    [sender resignFirstResponder];
}

@end
