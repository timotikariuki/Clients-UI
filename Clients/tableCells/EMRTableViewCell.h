//
//  EMRTableViewCell.h
//  Clients
//
//  Created by star on 5/21/24.
//

#import <UIKit/UIKit.h>
#import "PaddingLabel.h"
#import "EMRItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface EMRTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblDate;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet PaddingLabel *lblType;

- (void) setType:(EMRType)type;

@end

NS_ASSUME_NONNULL_END
