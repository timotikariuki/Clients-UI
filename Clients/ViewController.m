//
//  ViewController.m
//  Clients
//
//  Created by star on 5/17/24.
//

#import "ViewController.h"
#import "DetailsViewController.h"
#import "DocumentsViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
       
    [self onDetails:self];
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
    
    if (self.subVC) {
        [self.subVC.view removeFromSuperview];
        [self.subVC removeFromParentViewController];
    }
}

-(void)viewDidLayoutSubviews {
    self.imgAvatar.layer.cornerRadius = self.imgAvatar.frame.size.width / 2.0f;
    [self.imgAvatar layoutIfNeeded];
}

- (IBAction)onMail:(id)sender {
}

- (IBAction)onSms:(id)sender {
}

- (IBAction)onPhone:(id)sender {
}

#pragma mark - menu buttons

- (IBAction)onDetails:(id)sender {
    [self resetAllButtons];
    [self.btnDetails setSelected:YES];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.subVC = [storyboard instantiateViewControllerWithIdentifier:@"DetailsViewController"];
    [self addChildViewController:self.subVC];
    
    [self.subVC.view setFrame:self.containerView.bounds];
    [self.containerView addSubview:self.subVC.view];
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
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.subVC = [storyboard instantiateViewControllerWithIdentifier:@"EMRViewController"];
    [self addChildViewController:self.subVC];
    [self.subVC.view setFrame:self.containerView.bounds];
    [self.containerView addSubview:self.subVC.view];
}

- (IBAction)onPhotos:(id)sender {
    [self resetAllButtons];
    [self.btnPhotos setSelected:YES];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.subVC = [storyboard instantiateViewControllerWithIdentifier:@"PhotosViewController"];
    [self addChildViewController:self.subVC];
    [self.subVC.view setFrame:self.containerView.bounds];
    [self.containerView addSubview:self.subVC.view];
}

- (IBAction)onNotes:(id)sender {
    [self resetAllButtons];
    [self.btnNotes setSelected:YES];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.subVC = [storyboard instantiateViewControllerWithIdentifier:@"NotesViewController"];
    [self addChildViewController:self.subVC];
    [self.subVC.view setFrame:self.containerView.bounds];
    [self.containerView addSubview:self.subVC.view];
}

- (IBAction)onDocuments:(id)sender {
    [self resetAllButtons];
    [self.btnDocuments setSelected:YES];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.subVC = [storyboard instantiateViewControllerWithIdentifier:@"DocumentsViewController"];
    [self addChildViewController:self.subVC];
    [self.subVC.view setFrame:self.containerView.bounds];
    [self.containerView addSubview:self.subVC.view];
}

- (IBAction)onCommunication:(id)sender {
    [self resetAllButtons];
    [self.btnCommunication setSelected:YES];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.subVC = [storyboard instantiateViewControllerWithIdentifier:@"CommunicationViewController"];
    [self addChildViewController:self.subVC];
    
    [self.subVC.view setFrame:self.containerView.bounds];
    [self.containerView addSubview:self.subVC.view];
}





@end
