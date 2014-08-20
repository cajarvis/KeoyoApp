//
//  ThreadViewController.h
//  Learning
//
//  Created by Alexandra Miller-Browne on 8/12/14.
//  Copyright (c) 2014 KEOYO. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ThreadViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textMessage;
- (IBAction)threadMessage:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *threadMessage;

@end
