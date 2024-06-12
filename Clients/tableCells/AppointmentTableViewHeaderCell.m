//
//  AppointmentTableViewHeaderCell.m
//  Clients
//
//  Created by star on 6/13/24.
//

#import "AppointmentTableViewHeaderCell.h"

@implementation AppointmentTableViewHeaderCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    UIColor* borderColor = [UIColor colorWithRed:146/255.0f green:146/255.0f blue:163/255.0f alpha:1.0f];
    self.lblTitle.layer.borderColor = borderColor.CGColor;
    self.lblTitle.layer.borderWidth = 1.0f;
    self.lblTitle.layer.cornerRadius = 20.0f;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
