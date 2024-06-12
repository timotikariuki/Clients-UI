//
//  Appointment.h
//  Clients
//
//  Created by star on 6/13/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Appointment : NSObject

@property (nonatomic, strong) NSString* date;
@property (nonatomic, strong) NSString* time;
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* employee;
@property (nonatomic, assign) Boolean rebook;

- (instancetype) initWithAppointmentName:(NSString*)name employee:(NSString*)employee date:(NSString*)date time:(NSString*)time rebook:(Boolean)rebook;



@end

NS_ASSUME_NONNULL_END
