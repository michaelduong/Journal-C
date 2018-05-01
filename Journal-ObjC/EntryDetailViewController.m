//
//  EntryDetailViewController.m
//  Journal-ObjC
//
//  Created by Michael Duong on 2/12/18.
//  Copyright © 2018 Turnt Labs. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "TLEntry.h"
#import "TLEntryController.h"

@interface EntryDetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *entryTextView;

@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateWithEntry:self.entry];
}

- (IBAction)clearButtonTapped:(id)sender {
    self.titleTextField.text = @"";
    self.entryTextView.text = @"";
}

- (IBAction)saveButtonTapped:(id)sender {
    if (![self.titleTextField.text isEqualToString:@""] || [self.entryTextView.text isEqualToString:@""]) {
        
        if (self.entry) {
            self.entry.title = self.titleTextField.text;
            self.entry.bodyText = self.entryTextView.text;
            self.entry.timestamp = [NSDate date];
        } else {
            TLEntry *entry = [[TLEntry alloc] initWithTitle:self.titleTextField.text bodyText:self.entryTextView.text timestamp:[NSDate date]];
            [TLEntryController.shared addEntry:entry];
        }
        [self.navigationController popViewControllerAnimated:true];
    }
}

- (void)updateWithEntry:(TLEntry *)entry {
    if (self.entry) {
        self.entry = entry;
        self.titleTextField.text = entry.title;
        self.entryTextView.text = entry.bodyText;
    }
}

@end
