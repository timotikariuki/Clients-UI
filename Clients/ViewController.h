//
//  ViewController.h
//  Clients
//
//  Created by star on 5/17/24.
//

#import <UIKit/UIKit.h>
#import "components/CustomButton.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet CustomButton *btnDetails;
@property (weak, nonatomic) IBOutlet CustomButton *btnAppointments;
@property (weak, nonatomic) IBOutlet CustomButton *btnFinancials;
@property (weak, nonatomic) IBOutlet CustomButton *btnEMR;
@property (weak, nonatomic) IBOutlet CustomButton *btnPhotos;
@property (weak, nonatomic) IBOutlet CustomButton *btnNotes;
@property (weak, nonatomic) IBOutlet CustomButton *btnDocuments;
@property (weak, nonatomic) IBOutlet CustomButton *btnCommunication;

- (IBAction)onDetails:(id)sender;
- (IBAction)onAppointment:(id)sender;
- (IBAction)onFinancials:(id)sender;
- (IBAction)onEMR:(id)sender;
- (IBAction)onPhotos:(id)sender;
- (IBAction)onNotes:(id)sender;
- (IBAction)onDocuments:(id)sender;
- (IBAction)onCommunication:(id)sender;

@end

