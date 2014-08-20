//
//  NewMessageViewController.h
//  Learning
//
//  Created by Alexandra Miller-Browne on 8/12/14.
//  Copyright (c) 2014 KEOYO. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface NewMessageViewController : UIViewController 
@property (strong, nonatomic) IBOutlet UITextField *textMessage;
- (IBAction)sendMessage:(id)sender;



@end
