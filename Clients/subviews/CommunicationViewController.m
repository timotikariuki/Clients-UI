//
//  CommunicationViewController.m
//  Clients
//
//  Created by star on 5/21/24.
//

#import "CommunicationViewController.h"
#import "CommunicationTableViewCell.h"
#import "Communication.h"

@interface CommunicationViewController ()

@end

@implementation CommunicationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.arrCommunications = [[NSMutableArray alloc] init];
    [self.arrCommunications addObject:[[Communication alloc] initWithTitle:@"Your Feedback" date:@"Last Friday at 3:00 PM" from:@"Vedran Taneski" message:@"Dear Mr. Ballardin, You are attending London and I think it is a great opportunity to see your therapist and hear some feedback on your recent pains. Please let me know and I will schedule an appointment for you and Dr. Kovalsky. I hope you will get better an..." iconName:@"communication_mail"]];
    [self.arrCommunications addObject:[[Communication alloc] initWithTitle:@"Your Medical Report from The London Skin and Hair Clinic (Test)" date:@"Last Friday at 3:00 PM" from:@"Vedran Taneski" message:@"Dear Mr. Ballardin, You are attending London and I think it is a great opportunity to see your therapist and hear some feedback on your recent pains. Please let me know and I will schedule an appointment for you and Dr. Kovalsky. I hope you will get better an..." iconName:@"communication_letter"]];
    [self.arrCommunications addObject:[[Communication alloc] initWithTitle:@"Appointment 13 Mar with Ben Ballardin " date:@"Last Friday at 3:00 PM" from:@"Vedran Taneski" message:@"Hi! Please let me know if you want to cancel your appointment" iconName:@"communication_sms"]];
}



- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    CommunicationTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"CommunicationTableViewCellIdentifier" forIndexPath:indexPath];
    
    NSInteger row = [indexPath row];
    Communication *item = [self.arrCommunications objectAtIndex:row];
    
    [cell.imgIcon setImage:[UIImage imageNamed:item.imageName]];
    cell.lblTitle.text = item.title;
    cell.lblDate.text = item.date;
    cell.lblFrom.text = item.from;
    cell.lblMessage.text = item.message;
        
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrCommunications.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 120.0f;
}


@end
