//
//  FinancialItem.m
//  Clients
//
//  Created by star on 6/12/24.
//

#import "FinancialItem.h"

@implementation FinancialItem

- (instancetype) initWithNumber:(NSString*)number date:(NSString*)date employee:(NSString*)employee appointment:(NSString*)appointment status:(FinancialStatus)status amount:(CGFloat)amount {
    self = [super init];
    if (self) {
        _number = number;
        _date = date;
        _employee = employee;
        _appointment = appointment;
        _status = status;
        _amount = amount;
    }
    return self;
}
@end
