//
//  PhotoCollectionViewCell.m
//  Clients
//
//  Created by star on 5/23/24.
//

#import "PhotoCollectionViewCell.h"

@implementation PhotoCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.layer.cornerRadius = 4.0f;
    self.layer.borderWidth = 0.0f;
    self.layer.borderColor = nil;    
}

@end
