//
//  CJViewController.m
//  Learning
//
//  Created by Charlie Jarvis on 7/17/14.
//  Copyright (c) 2014 KEOYO. All rights reserved.
//

#import "CJViewController.h"

@interface CJViewController ()

@end

@implementation CJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)checkLogIn:(NSString *)uname : (NSString *)pwd
{
    NSString * rPassword = @"school";
    NSString * rUsername = @"dewey";
    
    if ([rPassword isEqualToString: pwd] && [rUsername isEqualToString: uname] )
    {
        [self performSegueWithIdentifier:@"welcomeSegue" sender:(nil)];
    }
    
    else
    {
        UIAlertView * passwordError = [[UIAlertView alloc] initWithTitle:@"Log in Error" message:@"You entered an incorrect username or password" delegate:nil cancelButtonTitle:@"Try Again" otherButtonTitles: nil];
    
        [passwordError show];
    }

    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField

{
    if ([textField isEqual:_password])
    {
    [self checkLogIn:_username.text :_password.text];
    }
    
    
    
    return YES;
}


- (IBAction)logIn:(id)sender
{
    
    [self checkLogIn:_username.text :_password.text];
    
    
}
@end
