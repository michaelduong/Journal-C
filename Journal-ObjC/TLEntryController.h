//
//  TLEntryController.h
//  Journal-ObjC
//
//  Created by Michael Duong on 2/12/18.
//  Copyright © 2018 Turnt Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TLEntry.h"

@interface TLEntryController : NSObject

@property (nonatomic, strong, readonly) NSArray *entries;

+ (TLEntryController *)shared;

- (instancetype)init;

- (void)addEntry:(TLEntry *)entry;
- (void)removeEntry:(TLEntry *)entry;

@end
