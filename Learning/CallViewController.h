//
//  CallViewController.h
//  Learning
//
//  Created by Alexandra Miller-Browne on 8/11/14.
//  Copyright (c) 2014 KEOYO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CallViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *phoneNumberTextField;
@property (weak, nonatomic) IBOutlet UIButton *callButton;

- (IBAction)calling:(id)sender;

@end
