//
//  TLEntry.h
//  Journal-ObjC
//
//  Created by Michael Duong on 2/12/18.
//  Copyright © 2018 Turnt Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TLEntry : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *bodyText;
@property (nonatomic, strong) NSDate *timestamp;

-(instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText timestamp:(NSDate *)timestamp;

@end
