//
//  NotesTableViewCell.m
//  Clients
//
//  Created by star on 5/22/24.
//

#import "NotesTableViewCell.h"

@implementation NotesTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    
    self.imgAvatar.layer.cornerRadius = 22.0f;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
