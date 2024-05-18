//
//  ViewController.m
//  Clients
//
//  Created by star on 5/17/24.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   
    [self resetAllButtons];
    [self.btnDetails setSelected:YES];
    
}

- (void)resetAllButtons {
    [self.btnDetails setSelected:NO];
    [self.btnAppointments setSelected:NO];
    [self.btnFinancials setSelected:NO];
    [self.btnEMR setSelected:NO];
    [self.btnPhotos setSelected:NO];
    [self.btnNotes setSelected:NO];
    [self.btnDocuments setSelected:NO];
    [self.btnCommunication setSelected:NO];
}

- (IBAction)onDetails:(id)sender {
    [self resetAllButtons];
    [self.btnDetails setSelected:YES];
}

- (IBAction)onAppointment:(id)sender{
    [self resetAllButtons];
    [self.btnAppointments setSelected:YES];
}

- (IBAction)onFinancials:(id)sender {
    [self resetAllButtons];
    [self.btnFinancials setSelected:YES];
}

- (IBAction)onEMR:(id)sender {
    [self resetAllButtons];
    [self.btnEMR setSelected:YES];
}

- (IBAction)onPhotos:(id)sender {
    [self resetAllButtons];
    [self.btnPhotos setSelected:YES];
}

- (IBAction)onNotes:(id)sender {
    [self resetAllButtons];
    [self.btnNotes setSelected:YES];
}

- (IBAction)onDocuments:(id)sender {
    [self resetAllButtons];
    [self.btnDocuments setSelected:YES];
}

- (IBAction)onCommunication:(id)sender {
    [self resetAllButtons];
    [self.btnCommunication setSelected:YES];
}





@end
