//
//  EntryListTableViewController.m
//  Journal-ObjC
//
//  Created by Michael Duong on 2/12/18.
//  Copyright © 2018 Turnt Labs. All rights reserved.
//

#import "EntryListTableViewController.h"
#import "TLEntryController.h"
#import "EntryDetailViewController.h"

@interface EntryListTableViewController ()

@end

@implementation EntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView reloadData];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [TLEntryController shared].entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"journalCell" forIndexPath:indexPath];
    
    TLEntry *entry = TLEntryController.shared.entries[indexPath.row];
    
    cell.textLabel.text = entry.title;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        TLEntry *entryToDelete = TLEntryController.shared.entries[indexPath.row];
        
        [TLEntryController.shared removeEntry:entryToDelete];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    if([segue.identifier isEqualToString:@"toJournalDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        TLEntry *entryToPass = [TLEntryController shared].entries[indexPath.row];
        
        EntryDetailViewController *destinationVC = (EntryDetailViewController *)segue.destinationViewController;
        
        destinationVC.entry = entryToPass;
    }
}


@end
