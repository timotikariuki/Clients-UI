//
//  EMRViewController.h
//  Clients
//
//  Created by star on 5/21/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EMRViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *arrEMRs;



@end

NS_ASSUME_NONNULL_END
