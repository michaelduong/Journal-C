//
//  EntryDetailViewController.h
//  Journal-ObjC
//
//  Created by Michael Duong on 2/12/18.
//  Copyright © 2018 Turnt Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TLEntry.h"

@interface EntryDetailViewController : UIViewController

@property (nonatomic, strong) TLEntry *entry;

@end
