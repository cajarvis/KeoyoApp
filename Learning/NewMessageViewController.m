//
//  NewMessageViewController.m
//  Learning
//
//  Created by Alexandra Miller-Browne on 8/12/14.
//  Copyright (c) 2014 KEOYO. All rights reserved.
//

#import "NewMessageViewController.h"

@interface NewMessageViewController ()

@end

@implementation NewMessageViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self keepKeyboard];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) keepKeyboard {
    [_textMessage becomeFirstResponder];
}
- (IBAction)sendMessage:(id)sender {
}
@end
