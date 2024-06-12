//
//  FinancialsTableViewCell.m
//  Clients
//
//  Created by star on 6/12/24.
//

#import "FinancialsTableViewCell.h"

@implementation FinancialsTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void) setStatus:(FinancialStatus)status {
    
    UIColor *textColor = [[UIColor alloc] init];
    UIColor *backgroundColor = [[UIColor alloc] init];
    UIColor *borderColor = [[UIColor alloc] init];
    
    switch (status) {
        case Paid:
            self.lblStatus.text = @"Paid";
            textColor = [UIColor colorWithRed:82/255.0f green:196/255.0f blue:26/255.0f alpha:1.0f];
            backgroundColor = [UIColor colorWithRed:246/255.0f green:1.0f blue:237/255.0f alpha:1.0f];
            borderColor = [UIColor colorWithRed:183/255.0f green:235/255.0f blue:143/255.0f alpha:1.0f];
            break;
        case Unpaid:
            self.lblStatus.text = @"Unpaid";
            textColor = [UIColor colorWithRed:255/255.0f green:91/255.0f blue:100/255.0f alpha:1.0f];
            backgroundColor = [UIColor colorWithRed:255/255.0f green:247/255.0f blue:247/255.0f alpha:1.0f];
            borderColor = [UIColor colorWithRed:255/255.0f green:91/255.0f blue:100/255.0f alpha:0.5f];
            break;
        case Credit:
            self.lblStatus.text = @"Credit";
            textColor = [UIColor colorWithRed:250/255.0f green:140/255.0f blue:22/255.0f alpha:1.0f];
            backgroundColor = [UIColor colorWithRed:255/255.0f green:247/255.0f blue:230/255.0f alpha:1.0f];
            borderColor = [UIColor colorWithRed:255/255.0f green:213/255.0f blue:145/255.0f alpha:1.0f];
            break;
        default:
            break;
    }
    
    [self.lblStatus setTextColor:textColor];
    [self.lblStatus setBackgroundColor:backgroundColor];
    self.lblStatus.layer.borderColor = borderColor.CGColor;
    self.lblStatus.layer.borderWidth = 1.0f;
    self.lblStatus.layer.cornerRadius = 4.0f;
}
@end
