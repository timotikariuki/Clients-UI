//
//  AppointmentViewController.m
//  Clients
//
//  Created by star on 6/13/24.
//

#import "AppointmentViewController.h"
#import "Appointment.h"
#import "AppointmentTableViewCell.h"
#import "AppointmentTableViewHeaderCell.h"

@interface AppointmentViewController ()

@end

@implementation AppointmentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.arrAppointments = [[NSMutableArray alloc] init];
    NSMutableArray *upcomingArray = [[NSMutableArray alloc] init];
    [upcomingArray addObject:[[Appointment alloc] initWithAppointmentName:@"Facial Reconstruction" employee:@"Dr. Emilly Connor" date:@"23/04/2024" time:@"10:30" rebook:NO]];
    
    NSMutableArray *pastArray = [[NSMutableArray alloc] init];
    [pastArray addObject:[[Appointment alloc] initWithAppointmentName:@"Facial Reconstruction" employee:@"Dr. Emilly Connor" date:@"23/04/2024" time:@"10:30" rebook:YES]];
    [pastArray addObject:[[Appointment alloc] initWithAppointmentName:@"Facial Reconstruction" employee:@"Dr. Emilly Connor" date:@"23/04/2024" time:@"10:30" rebook:NO]];
    [pastArray addObject:[[Appointment alloc] initWithAppointmentName:@"Facial Reconstruction" employee:@"Dr. Emilly Connor" date:@"23/04/2024" time:@"10:30" rebook:YES]];
    [pastArray addObject:[[Appointment alloc] initWithAppointmentName:@"Facial Reconstruction" employee:@"Dr. Emilly Connor" date:@"23/04/2024" time:@"10:30" rebook:NO]];
    [pastArray addObject:[[Appointment alloc] initWithAppointmentName:@"Facial Reconstruction" employee:@"Dr. Emilly Connor" date:@"23/04/2024" time:@"10:30" rebook:NO]];
    
    [self.arrAppointments addObject:upcomingArray];
    [self.arrAppointments addObject:pastArray];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.arrAppointments.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    AppointmentTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"AppointmentTableViewCellIdentifier" forIndexPath:indexPath];
    
    NSInteger row = [indexPath row];
    NSInteger section = [indexPath section];
    NSMutableArray *arr = [self.arrAppointments objectAtIndex:section];
    Appointment *item = [arr objectAtIndex:row];
    
    UIColor *redColor = [UIColor colorWithRed:1.0f green:91/255.0f  blue:100/255.0f alpha:1.0f];
    UIColor *blueColor = [UIColor colorWithRed:84/255.0f green:178/255.0f  blue:211/255.0f alpha:1.0f];
    if (row % 2 == 1) {
        [cell.viewColor setBackgroundColor:redColor];
    } else {
        [cell.viewColor setBackgroundColor:blueColor];
    }
    cell.lblDate.text = item.date;
    cell.lblTime.text = item.time;
    cell.lblEmployee.text = item.employee;
    cell.lblAppointmentName.text = item.name;
//    [cell.imgAvatar setImage: ]
    if (!item.rebook) {
        [cell.imgRebook setHidden:YES];
    }
        
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    AppointmentTableViewHeaderCell* cell = [tableView dequeueReusableCellWithIdentifier:@"AppointmentTableViewHeaderCellIdentifier"];
    
    switch (section) {
        case 0:
            cell.lblTitle.text = @"Upcoming";
            break;
        case 1:
            cell.lblTitle.text = @"Past";
        default:
            break;
    }
    
    return cell.contentView;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray* arr = [self.arrAppointments objectAtIndex:section];
    return arr.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 60.0;
}


@end
