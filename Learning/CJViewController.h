//
//  CJViewController.h
//  Learning
//
//  Created by Charlie Jarvis on 7/17/14.
//  Copyright (c) 2014 KEOYO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CJViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
- (IBAction)logIn:(id)sender;

@end
