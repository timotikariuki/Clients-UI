//
//  AppointmentViewController.h
//  Clients
//
//  Created by star on 6/13/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppointmentViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *arrAppointments;

@end

NS_ASSUME_NONNULL_END
