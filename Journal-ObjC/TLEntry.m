//
//  TLEntry.m
//  Journal-ObjC
//
//  Created by Michael Duong on 2/12/18.
//  Copyright © 2018 Turnt Labs. All rights reserved.
//

#import "TLEntry.h"

@implementation TLEntry

-(instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText timestamp:(NSDate *)timestamp
{
    self = [super init];
    if (self) {
    _title = title;
    _bodyText = bodyText;
    _timestamp = [[NSDate alloc] init];
    }
    return self;
}

@end
