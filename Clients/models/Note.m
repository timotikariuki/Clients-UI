//
//  Note.m
//  Clients
//
//  Created by star on 5/22/24.
//

#import "Note.h"

@implementation Note

- (instancetype) initWithTitle:(NSString*)title by:(NSString*)by date:(NSString*)date avatarName:(NSString*)avatarName {
    self = [super init];
    if (self) {
        _title = title;
        _by = by;
        _date = date;
        _avatarName = avatarName;
    }
    return self;
}

@end
