//
//  EMRViewController.m
//  Clients
//
//  Created by star on 5/21/24.
//

#import "EMRViewController.h"
#import "EMRTableViewCell.h"
#import "EMRItem.h"

@interface EMRViewController ()

@end

@implementation EMRViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.arrEMRs = [[NSMutableArray alloc] init];
    [self.arrEMRs addObject:[[EMRItem alloc] initWithTitle:@"Botox Consent" date:@"21 Aug 2021, 2:00 PM" name:@"Bruno Ballardin" type:Consent]];
    [self.arrEMRs addObject:[[EMRItem alloc] initWithTitle:@"Botox Treatment Form" date:@"20 Aug 2021, 2:00 PM" name:@"Erika Chapman" type:Treatment]];
    [self.arrEMRs addObject:[[EMRItem alloc] initWithTitle:@"Medical History Form" date:@"18 Aug 2021, 2:00 PM" name:@"Jane Rache" type:Questionnaire]];
    [self.arrEMRs addObject:[[EMRItem alloc] initWithTitle:@"Medical History Form" date:@"18 Aug 2021, 2:00 PM" name:@"Jane Rache" type:Questionnaire]];
    [self.arrEMRs addObject:[[EMRItem alloc] initWithTitle:@"Botox Consent" date:@"21 Aug 2021, 2:00 PM" name:@"Bruno Ballardin" type:Consent]];
    [self.arrEMRs addObject:[[EMRItem alloc] initWithTitle:@"Botox Treatment Form" date:@"20 Aug 2021, 2:00 PM" name:@"Erika Chapman" type:Treatment]];
    [self.arrEMRs addObject:[[EMRItem alloc] initWithTitle:@"Medical History Form" date:@"18 Aug 2021, 2:00 PM" name:@"Jane Rache" type:Questionnaire]];
    [self.arrEMRs addObject:[[EMRItem alloc] initWithTitle:@"Botox Consent" date:@"21 Aug 2021, 2:00 PM" name:@"Bruno Ballardin" type:Consent]];
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    EMRTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"EMRTableViewCellIdentifier" forIndexPath:indexPath];
    
    NSInteger row = [indexPath row];
    EMRItem *item = [self.arrEMRs objectAtIndex:row];
    
    cell.lblTitle.text = item.title;
    cell.lblDate.text = item.date;
    cell.lblName.text = item.name;
    [cell setType:item.type];
        
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrEMRs.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70.0f;
}



@end
