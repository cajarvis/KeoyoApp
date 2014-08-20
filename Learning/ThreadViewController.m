//
//  ThreadViewController.m
//  Learning
//
//  Created by Alexandra Miller-Browne on 8/12/14.
//  Copyright (c) 2014 KEOYO. All rights reserved.
//

#import "ThreadViewController.h"

@interface ThreadViewController ()

@end

@implementation ThreadViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    _textMessage.delegate = self;
    if ([self.textMessage.text isEqualToString:@"Text Message"]){
        [self textFieldDidBeginEditing:_textMessage];
    }
    else{
        [self textFieldDidEndEditing:_textMessage];
    }
    
}

//animates the textfield so that it goes up when about to text
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    [UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDelegate:self];
	[UIView setAnimationDuration:0.5];
	[UIView setAnimationBeginsFromCurrentState:YES];
	textField.frame = CGRectMake(textField.frame.origin.x, (textField.frame.origin.y - 175.0), textField.frame.size.width, textField.frame.size.height);
	[UIView commitAnimations];
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
    [UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDelegate:self];
	[UIView setAnimationDuration:0.5];
	[UIView setAnimationBeginsFromCurrentState:YES];
	textField.frame = CGRectMake(textField.frame.origin.x, (textField.frame.origin.y + 100.0), textField.frame.size.width, textField.frame.size.height);
	[UIView commitAnimations];
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	//If the user touched on our view we set the text field to resign
	//first responder to minimize the keyboard
	[_textMessage resignFirstResponder];
    
}

- (IBAction)threadMessage:(id)sender {
    NSLog(@"message sent");
}



@end
