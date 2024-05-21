//
//  Communication.m
//  Clients
//
//  Created by star on 5/21/24.
//

#import "Communication.h"

@implementation Communication

- (instancetype) initWithTitle:(NSString*)title date:(NSString*)date from:(NSString*)from message:(NSString*)message iconName:(NSString*)imageName {
    
    self = [super init];
    
    if (self) {
        _title = title;
        _date = date;
        _from = from;
        _message = message;
        _imageName = imageName;
    }
    
    return self;
}
@end
