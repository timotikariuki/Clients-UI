//
//  AppointmentViewController.h
//  Clients
//
//  Created by star on 6/13/24.
//

#import <UIKit/UIKit.h>
#import "CustomButton.h"

NS_ASSUME_NONNULL_BEGIN

@interface AppointmentViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>


@property (weak, nonatomic) IBOutlet CustomButton *btnAll;
@property (weak, nonatomic) IBOutlet CustomButton *btnCompleted;
@property (weak, nonatomic) IBOutlet CustomButton *btnNoShow;
@property (weak, nonatomic) IBOutlet CustomButton *btnCanceled;


@property (nonatomic, strong) NSMutableArray *arrAppointments;

- (IBAction)onAllButton:(id)sender;
- (IBAction)onCompletedButton:(id)sender;
- (IBAction)onNoShowButton:(id)sender;
- (IBAction)onCanceledButton:(id)sender;


@end

NS_ASSUME_NONNULL_END
