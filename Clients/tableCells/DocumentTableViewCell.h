//
//  DocumentTableViewCell.h
//  Clients
//
//  Created by star on 5/18/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DocumentTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imgIcon;
@property (weak, nonatomic) IBOutlet UILabel *lblFileName;
@property (weak, nonatomic) IBOutlet UILabel *lblDate;


@end

NS_ASSUME_NONNULL_END
