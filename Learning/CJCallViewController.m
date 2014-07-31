//
//  CJCallViewController.m
//  Learning
//
//  Created by Charlie Jarvis on 7/17/14.
//  Copyright (c) 2014 KEOYO. All rights reserved.
//

#import "CJCallViewController.h"

@interface CJCallViewController ()

@end

@implementation CJCallViewController
{
    NSMutableArray*number;

}
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
    number=[[NSMutableArray alloc] init];
    [number addObject:@"1"];
    [number addObject:@"2"];
    [number addObject:@"3"];
    [number addObject:@"4"];
    [number addObject:@"5"];
    [number addObject:@"6"];
    [number addObject:@"7"];
    [number addObject:@"8"];
    [number addObject:@"9"];
    [number addObject:@"0"];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
