//
//  FinancialsViewController.m
//  Clients
//
//  Created by star on 6/12/24.
//

#import "FinancialsViewController.h"
#import "FinancialsTableViewCell.h"
#import "FinancialItem.h"

@interface FinancialsViewController ()

@end

@implementation FinancialsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.arrFinancials = [[NSMutableArray alloc] init];
    [self.arrFinancials addObject:[[FinancialItem alloc] initWithNumber:@"#922060" date:@"10/12/2020" employee:@"Anika Kadir" appointment:@"Facial Reconstruction" status:Unpaid amount:28.00]];
    [self.arrFinancials addObject:[[FinancialItem alloc] initWithNumber:@"#922060" date:@"10/12/2020" employee:@"Anika Kadir" appointment:@"Facial Reconstruction" status:Paid amount:28.00]];
    [self.arrFinancials addObject:[[FinancialItem alloc] initWithNumber:@"#CN922060" date:@"10/12/2020" employee:@"Anika Kadir" appointment:@"Facial Reconstruction" status:Credit amount:28.00]];
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
    return 1;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    FinancialsTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"FinancialsTableViewCellIdentifier" forIndexPath:indexPath];
    
    NSInteger row = [indexPath row];
    FinancialItem *item = [self.arrFinancials objectAtIndex:row];
    
    cell.lblDate.text = item.date;
    cell.lblInvoiceNumber.text = item.number;
    cell.lblEmployee.text = item.employee;
    cell.lblAppointment.text = item.appointment;
    cell.lblAmount.text = [NSString stringWithFormat:@"£%.2f", item.amount];
    [cell setStatus:item.status];
        
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"FinancialsTableViewHeaderCellIdentifier"];
    
    return cell.contentView;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrFinancials.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 40.0;
}

@end
