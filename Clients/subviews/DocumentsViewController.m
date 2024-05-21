//
//  DocumentsViewController.m
//  Clients
//
//  Created by star on 5/18/24.
//

#import "DocumentsViewController.h"
#import "DocumentTableViewCell.h"
#import "Document.h"

@interface DocumentsViewController ()

@end

@implementation DocumentsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.arrDocuments = [[NSMutableArray alloc] init];
    [self.arrDocuments addObject:[[Document alloc] initWithName:@"covid-disease.pdf" type:@"doc" date:@"30.09.2022"]];
    [self.arrDocuments addObject:[[Document alloc] initWithName:@"covid-disease1.pdf" type:@"doc" date:@"30.09.2022"]];
    [self.arrDocuments addObject:[[Document alloc] initWithName:@"covid-disease2.pdf" type:@"doc" date:@"30.09.2022"]];
    [self.arrDocuments addObject:[[Document alloc] initWithName:@"covid-test.html" type:@"code" date:@"30.09.2022"]];
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    DocumentTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"DocumentTableViewCellIdentifier" forIndexPath:indexPath];
    
    NSInteger row = [indexPath row];
    Document *docInfo = [self.arrDocuments objectAtIndex:row];
    
    if ([docInfo.fileType isEqual:@"doc"]) {
        [cell.imgIcon setImage:[UIImage imageNamed:@"pdf_icon"]];
    } else if ([docInfo.fileType isEqual:@"code"]) {
        [cell.imgIcon setImage:[UIImage imageNamed:@"code_icon"]];
    }
    
    cell.lblFileName.text = docInfo.fileName;
    cell.lblDate.text = docInfo.date;
        
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrDocuments.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70.0f;
}


@end
