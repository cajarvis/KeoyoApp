//
//  CJViewController.m
//  Learning
//
//  Created by Charlie Jarvis on 7/17/14.
//  Copyright (c) 2014 KEOYO. All rights reserved.
//

#import "CJViewController.h"

@interface CJViewController ()
@property (strong, nonatomic) IBOutlet UIButton *loginButton;

@end

@implementation CJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    _loginButton.layer.borderColor = [UIColor whiteColor].CGColor;
    _loginButton.layer.borderWidth = 2.0f;
    _loginButton.layer.backgroundColor = [UIColor blueColor].CGColor;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)checkLogIn:(NSString *)uname : (NSString *)pwd
{
    
    NSString * rUsername = @"a";
    NSString * rPassword = @"a";
    
    _password.secureTextEntry = YES;
    
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
