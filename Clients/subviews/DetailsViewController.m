//
//  DetailsViewController.m
//  Clients
//
//  Created by star on 5/18/24.
//

#import "DetailsViewController.h"
#import "DetailsTableViewCell.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.arrTitles = @[@"Full Name", @"Patient ID", @"Gender", @"DOB", @"Email", @"Phone", @"Mobile", @"Address", @"Next of Kin", @"Next of kin name", @"Next of kin relationship"];
    self.arrDescriptions = @[@"Sylvia Cole", @"102", @"Female", @"10/24/1994 (29 years)", @"sylvia@pabau.com", @"38922654253 (The Republic of North Macedonia)", @"38971241892 (The Republic of North Macedonia)", @"59 Princess road West, Leicester, GH8PF"];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    DetailsTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"DetailsTableViewCellIdentifier" forIndexPath:indexPath];
    
    cell.lblTitle.text = [self.arrTitles objectAtIndex:indexPath.row];
    cell.lblDescription.text = (indexPath.row >= self.arrDescriptions.count) ? @"" : [self.arrDescriptions objectAtIndex:indexPath.row];
    
    if ([self.arrTitles[indexPath.row] isEqualToString:@"Email"]) {
        UIColor *blueColor = [UIColor colorWithRed:84/255.0f green:178/255.0f blue:211/255.0f alpha:1.0f];
        [cell.lblDescription setTextColor:blueColor];
    }
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrTitles.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 55.0f;
}


@end
