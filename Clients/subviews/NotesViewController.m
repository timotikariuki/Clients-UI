//
//  NotesViewController.m
//  Clients
//
//  Created by star on 5/22/24.
//

#import "NotesViewController.h"
#import "NotesTableViewCell.h"
#import "Note.h"

@interface NotesViewController ()

@end

@implementation NotesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.arrNotes = [[NSMutableArray alloc] init];
    [self.arrNotes addObject:[[Note alloc] initWithTitle:@"Client was late" by:@"Bruno Ballardin" date:@"21 Aug 2021, 2:00 PM" avatarName:@"avatar1.png"]];
    [self.arrNotes addObject:[[Note alloc] initWithTitle:@"No show" by:@"Bruno Ballardin" date:@"21 Aug 2021, 2:00 PM" avatarName:@"avatar2.png"]];
    [self.arrNotes addObject:[[Note alloc] initWithTitle:@"Client was complaining" by:@"Bruno Ballardin" date:@"21 Aug 2021, 2:00 PM" avatarName:@"avatar3.png"]];
    [self.arrNotes addObject:[[Note alloc] initWithTitle:@"Client was late" by:@"Bruno Ballardin" date:@"21 Aug 2021, 2:00 PM" avatarName:@"avatar4.png"]];
    [self.arrNotes addObject:[[Note alloc] initWithTitle:@"Client was late" by:@"Bruno Ballardin" date:@"21 Aug 2021, 2:00 PM" avatarName:@"avatar1.png"]];
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NotesTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"NotesTableViewCellIdentifier" forIndexPath:indexPath];
    
    NSInteger row = [indexPath row];
    Note *item = [self.arrNotes objectAtIndex:row];
    
    [cell.imgAvatar setImage:[UIImage imageNamed:item.avatarName]];
    cell.lblTitle.text = item.title;
    cell.lblBy.text = [NSString stringWithFormat:@"By %@", item.by];
    cell.lblDate.text = [NSString stringWithFormat:@"On %@", item.date];
        
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrNotes.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 90.0f;
}


@end
