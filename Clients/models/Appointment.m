//
//  Appointment.m
//  Clients
//
//  Created by star on 6/13/24.
//

#import "Appointment.h"

@implementation Appointment


- (instancetype) initWithAppointmentName:(NSString*)name employee:(NSString*)employee date:(NSString*)date time:(NSString*)time rebook:(Boolean)rebook {
    self = [super init];
    if (self) {
        _name = name;
        _employee = employee;
        _date = date;
        _time = time;
        _rebook = rebook;
    }
    return self;
}
@end
