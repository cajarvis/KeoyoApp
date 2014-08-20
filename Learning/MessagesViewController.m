//
//  MessagesViewController.m
//  Learning
//
//  Created by Alexandra Miller-Browne on 8/11/14.
//  Copyright (c) 2014 KEOYO. All rights reserved.
//

#import "MessagesViewController.h"

@interface MessagesViewController ()
@property (strong, nonatomic) UIViewController * ThreadViewController;
@end

@implementation MessagesViewController{
    NSMutableArray * messages;
    NSMutableArray * content;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	messages = [NSMutableArray arrayWithObjects:@"Thread1", @"Thread2",@"Thread3",@"Thread4",@"Thread5", nil];
    content = [NSMutableArray arrayWithObjects:@"hello",@"hi",@"yo",@"what's up",@"hey hey",nil];
    
    }

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [messages count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tableIdentifier = @"TableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:tableIdentifier];
    }
    
    cell.textLabel.text = [messages objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [content objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath {
    
    //Build a segue string based on the selected cell
    NSString *segueString = [NSString stringWithFormat:@"ToThread",
                             [messages objectAtIndex:indexPath.row]];
    [self performSegueWithIdentifier:segueString
                              sender:[messages objectAtIndex:indexPath.row]];
}


-(void) viewWillAppear:(BOOL)animated {
    [[self navigationController] setNavigationBarHidden:NO animated:YES];
}

- (IBAction)composeMessage:(id)sender {
    NSLog(@"Start composing message");
}



@end
