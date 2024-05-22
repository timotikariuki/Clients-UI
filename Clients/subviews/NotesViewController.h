//
//  NotesViewController.h
//  Clients
//
//  Created by star on 5/22/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NotesViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *arrNotes;

@end

NS_ASSUME_NONNULL_END
