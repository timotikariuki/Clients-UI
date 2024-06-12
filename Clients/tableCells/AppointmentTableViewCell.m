//
//  AppointmentTableViewCell.m
//  Clients
//
//  Created by star on 6/13/24.
//

#import "AppointmentTableViewCell.h"

@implementation AppointmentTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.imgAvatar.layer.cornerRadius = 12.0f;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
