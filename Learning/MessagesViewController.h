//
//  MessagesViewController.h
//  Learning
//
//  Created by Alexandra Miller-Browne on 8/11/14.
//  Copyright (c) 2014 KEOYO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessagesViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *messages;
@property (strong, nonatomic) UITableView * tableView;
- (IBAction)composeMessage:(id)sender;

@end
