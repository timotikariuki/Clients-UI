//
//  EMRViewController.h
//  Clients
//
//  Created by star on 5/21/24.
//

#import <UIKit/UIKit.h>
#import "CustomButton.h"

NS_ASSUME_NONNULL_BEGIN

@interface EMRViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet CustomButton *btnLatestVersion;
@property (weak, nonatomic) IBOutlet CustomButton *btnFullHistory;


@property (nonatomic, strong) NSMutableArray *arrEMRs;

- (IBAction)onLatestVersion:(id)sender;
- (IBAction)onFullHistory:(id)sender;


@end

NS_ASSUME_NONNULL_END
