//
//  NotesTableViewCell.h
//  Clients
//
//  Created by star on 5/22/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NotesTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imgAvatar;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblBy;
@property (weak, nonatomic) IBOutlet UILabel *lblDate;

@end

NS_ASSUME_NONNULL_END
