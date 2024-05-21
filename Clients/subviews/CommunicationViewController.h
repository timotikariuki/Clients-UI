//
//  CommunicationViewController.h
//  Clients
//
//  Created by star on 5/21/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CommunicationViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *arrCommunications;

@end

NS_ASSUME_NONNULL_END
