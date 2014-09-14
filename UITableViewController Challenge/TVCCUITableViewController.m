//
//  TVCCUITableViewController.m
//  UITableViewController Challenge
//
//  Created by Jose Manuel Ramirez Martinez on 14/09/14.
//  Copyright (c) 2014 Jose Manuel Ramírez Martínez. All rights reserved.
//

#import "TVCCUITableViewController.h"

@implementation TVCCUITableViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if ( section == 0 ) {
        return 2;
    }
    else if ( section == 1) {
        return 1;
    }
    else {
        return 3;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if ( indexPath.section == 0 ) {
        cell.textLabel.text = @"I am in section 0";
        cell.backgroundColor = [UIColor redColor];
    }
    else if ( indexPath.section == 1) {
        cell.textLabel.text = @"Another section";
        cell.backgroundColor = [UIColor blueColor];
    }
    else {
        cell.textLabel.text = [NSString stringWithFormat:@"Row %i", indexPath.row];
        cell.backgroundColor = [UIColor yellowColor];
    }
    
    return cell;
}

@end
