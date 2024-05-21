//
//  EMRItem.m
//  Clients
//
//  Created by star on 5/21/24.
//

#import "EMRItem.h"

@implementation EMRItem

- (instancetype) initWithTitle:(NSString*)title date:(NSString*)date name:(NSString*)name type:(EMRType)type {
    self = [super init];
    if (self) {
        _title = title;
        _date = date;
        _name = name;
        _type = type;
    }
    return self;
}

@end
