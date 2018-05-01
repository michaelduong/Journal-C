//
//  TLEntryController.m
//  Journal-ObjC
//
//  Created by Michael Duong on 2/12/18.
//  Copyright © 2018 Turnt Labs. All rights reserved.
//

#import "TLEntryController.h"

@interface TLEntryController()

@property (nonatomic, strong, readwrite) NSMutableArray *internalEntry;

@end

@implementation TLEntryController

//Shared Controller

+ (TLEntryController *)shared
{
    static TLEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [TLEntryController new];
    });
    return shared;
}

-(instancetype)init
{
    self = [super init];
    if (self) {
        _internalEntry = [[NSMutableArray alloc] init];
    }
    return self;
}

//CRUD

- (void)addEntry:(TLEntry *)entry
{
    [self.internalEntry addObject:entry];
}

- (void)removeEntry:(TLEntry *)entry
{
    [self.internalEntry removeObject:entry];
}


- (NSArray *)entries { return self.internalEntry; }

@end
