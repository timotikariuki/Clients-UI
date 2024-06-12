//
//  FinancialsTableViewCell.h
//  Clients
//
//  Created by star on 6/12/24.
//

#import <UIKit/UIKit.h>
#import "FinancialItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface FinancialsTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblDate;
@property (weak, nonatomic) IBOutlet UILabel *lblInvoiceNumber;
@property (weak, nonatomic) IBOutlet UILabel *lblEmployee;
@property (weak, nonatomic) IBOutlet UILabel *lblAppointment;
@property (weak, nonatomic) IBOutlet UILabel *lblStatus;
@property (weak, nonatomic) IBOutlet UILabel *lblAmount;

- (void) setStatus:(FinancialStatus)status;

@end

NS_ASSUME_NONNULL_END
