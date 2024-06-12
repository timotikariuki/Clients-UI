//
//  FinancialsViewController.h
//  Clients
//
//  Created by star on 6/12/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FinancialsViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *arrFinancials;

@end

NS_ASSUME_NONNULL_END
