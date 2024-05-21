//
//  Document.m
//  Clients
//
//  Created by star on 5/18/24.
//

#import "Document.h"

@implementation Document

- (instancetype) initWithName:(NSString*)fileName type:(NSString*)fileType  date:(NSString*)date {
    self = [super init];
    if (self) {
        _fileName = fileName;
        _fileType = fileType;
        _date = date;
    }
    return self;
}

@end
