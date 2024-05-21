//
//  DetailsViewController.h
//  Clients
//
//  Created by star on 5/18/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) NSArray* arrTitles;
@property(nonatomic, strong) NSArray* arrDescriptions;

@end

NS_ASSUME_NONNULL_END
