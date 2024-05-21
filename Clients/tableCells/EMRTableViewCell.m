//
//  EMRTableViewCell.m
//  Clients
//
//  Created by star on 5/21/24.
//

#import "EMRTableViewCell.h"

@implementation EMRTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void) setType:(EMRType)type {
    
    UIColor *textColor = [[UIColor alloc] init];
    UIColor *backgroundColor = [[UIColor alloc] init];
    UIColor *borderColor = [[UIColor alloc] init];
    
    switch (type) {
        case Consent:
            self.lblType.text = @"Consent";
            textColor = [UIColor colorWithRed:82/255.0f green:196/255.0f blue:26/255.0f alpha:1.0f];
            backgroundColor = [UIColor colorWithRed:246/255.0f green:1.0f blue:237/255.0f alpha:1.0f];
            borderColor = [UIColor colorWithRed:183/255.0f green:235/255.0f blue:143/255.0f alpha:1.0f];
            break;
        case Treatment:
            self.lblType.text = @"Treatment";
            textColor = [UIColor colorWithRed:114/255.0f green:46/255.0f blue:209/255.0f alpha:1.0f];
            backgroundColor = [UIColor colorWithRed:249/255.0f green:240/255.0f blue:1.0f alpha:1.0f];
            borderColor = [UIColor colorWithRed:211/255.0f green:173/255.0f blue:247/255.0f alpha:1.0f];
            break;
        case Questionnaire:
            self.lblType.text = @"Questionnaire";
            textColor = [UIColor colorWithRed:19/255.0f green:194/255.0f blue:194/255.0f alpha:1.0f];
            backgroundColor = [UIColor colorWithRed:230/255.0f green:240/255.0f blue:251/255.0f alpha:1.0f];
            borderColor = [UIColor colorWithRed:135/255.0f green:232/255.0f blue:222/255.0f alpha:1.0f];
            break;
        default:
            break;
    }
    
    [self.lblType setTextColor:textColor];
    [self.lblType setBackgroundColor:backgroundColor];
    self.lblType.layer.borderColor = borderColor.CGColor;
    self.lblType.layer.borderWidth = 1.0f;
    self.lblType.layer.cornerRadius = 2.0f;
}

@end
