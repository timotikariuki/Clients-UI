//
//  AppointmentTableViewCell.h
//  Clients
//
//  Created by star on 6/13/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppointmentTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *viewColor;

@property (weak, nonatomic) IBOutlet UILabel *lblDate;
@property (weak, nonatomic) IBOutlet UILabel *lblTime;
@property (weak, nonatomic) IBOutlet UILabel *lblAppointmentName;
@property (weak, nonatomic) IBOutlet UIImageView *imgAvatar;
@property (weak, nonatomic) IBOutlet UILabel *lblEmployee;
@property (weak, nonatomic) IBOutlet UIImageView *imgRebook;

@end

NS_ASSUME_NONNULL_END
