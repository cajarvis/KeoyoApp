//
//  CallViewController.m
//  Learning
//
//  Created by Alexandra Miller-Browne on 8/11/14.
//  Copyright (c) 2014 KEOYO. All rights reserved.
//

#import "CallViewController.h"

@interface CallViewController ()
@end

@implementation CallViewController

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
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    [self keepKeyboard];
    
    
    _callButton.layer.borderColor = [UIColor colorWithRed:0.0 green:153.0 blue:0.0 alpha:0.0].CGColor;
    _callButton.layer.borderWidth = 2.0f;
    _callButton.layer.backgroundColor = [UIColor greenColor].CGColor;
    
    [_phoneNumberTextField setFont:[UIFont systemFontOfSize:35]];
    
    [self checkPhoneNumber:_phoneNumberTextField];
    
}

-(void)checkPhoneNumber: (UITextField *) textField  {
    NSString * phone = self.phoneNumberTextField.text;
    NSUInteger length = [phone length];
    
    NSLog(@"length = %d", length);
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"You entered %@",self.phoneNumberTextField.text);
    [self.phoneNumberTextField resignFirstResponder];
    return YES;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) dismissKeyboard
{
    [_phoneNumberTextField resignFirstResponder];
    
}

-(void) keepKeyboard {
    [_phoneNumberTextField becomeFirstResponder];
}

- (IBAction)calling:(id)sender {
    [self dismissKeyboard];
    
}
@end
